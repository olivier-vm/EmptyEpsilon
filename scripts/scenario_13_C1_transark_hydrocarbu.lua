-- Name: C1 - Real Transark - R�colte Hydrocarbu
-- Description: Mission de pilotage sans ennemis. Un cargo mineur Transark doit r�colter les composants (minerai, gaz) n�cessaire pour le raffinage d'hydrocarbu. 
-- Type: Mission

require("utils.lua")

function init()
	-- Vaisseau joueur
	player = PlayerSpaceship():setCallSign("Sigma 7"):setFaction("Transark"):setTemplate("Cargo Extracteur RLS"):setPosition(0, 0):setRotation(-90):commandTargetRotation(-90)

	x, y = player:getPosition()
	asteroidList = {}
	-- Cr�ation d'une aura d'astero�des
	-- La r�partition de fait "carr�e" pour une bonne r�partition g�om�trique
	-- Si la r�partition se faisait concentrique, il y a une plus forte concentration d'�l�ment pr�s du centre que de l'ext�rieur
	
	for n=1,4000 do
		table.insert(asteroidList, Asteroid():setPosition(x + random(-300000, 300000), y + random(-300000, 300000)):setSize(random(10, 500)))
	end

	-- Station
	SpaceStation():setTemplate("Large Station"):setFaction("Transark"):setCallSign("DS-HYDRO"):setPosition(-68203, 28889)

	-- N�buleuses
	Nebula():setPosition(15444, -69333)
    Nebula():setPosition(29000, -50889)
    Nebula():setPosition(35444, -43111)
    Nebula():setPosition(38111, -50222)
    Nebula():setPosition(38111, -58000)
    Nebula():setPosition(44111, -39778)
    Nebula():setPosition(46556, -48444)
    Nebula():setPosition(51889, -35778)
    Nebula():setPosition(52111, -59111)
    Nebula():setPosition(52778, -14222)
    Nebula():setPosition(53667, -50000)
    Nebula():setPosition(54778, -28444)
    Nebula():setPosition(61667, -64889)
    Nebula():setPosition(63222, -42000)
    Nebula():setPosition(64778, -26667)
    Nebula():setPosition(65444, -35778)
    Nebula():setPosition(67444, -20889)
    Nebula():setPosition(71889, -36444)
    Nebula():setPosition(77889, -55111)
    Nebula():setPosition(79222, -45556)
    Nebula():setPosition(92556, -21333)

	
	-- GM buttons
	addGMFunction("phase 1", function()
		mission_state = phase1
	end)
	
	Script():run("scenar_minerai.lua")
	
	-- Etat initial de la mission
	mission_state = phase1
end

function asteroidUpdate()
	-- Il faut rep�rer dans quel quadrant (et quel coin �ventuel) un ast�roide est supprim�, pour en rajouter un dans le c�t� oppos�, afin de garantir une r�partition r�guli�re
	local x, y = player:getPosition()
	for n = 1,4000 do
		distanceTooFar = 0
		local i, j = asteroidList[n]:getPosition()
		local xxx = x - i
		local yyy = y - j
		if xxx > 302000 then distanceTooFar = distanceTooFar + 1 end -- West
		if xxx < -302000 then distanceTooFar = distanceTooFar + 2 end -- East
		if yyy > 302000 then distanceTooFar = distanceTooFar + 4 end -- North
		if yyy < -302000 then distanceTooFar = distanceTooFar + 8 end -- South
		if distanceTooFar > 0 then
			-- On change la position de l'ast�ro�de qui est trop loin, et on le place dans le quadrant oppos� � une distance sup�rieur au champ de vision 300000 < ... < 302000
			if distanceTooFar == 1 then
				asteroidList[n]:setPosition(x + random(30000, 302000), y + random(-300000, 300000)):setSize(random(10, 500))
			elseif distanceTooFar == 2 then
				asteroidList[n]:setPosition(x + random(-300000, -302000), y + random(-300000, 300000)):setSize(random(10, 500))
			elseif distanceTooFar == 4 then
				asteroidList[n]:setPosition(x + random(-300000, 300000), y + random(300000, 302000)):setSize(random(10, 500))
			elseif distanceTooFar == 8 then
				asteroidList[n]:setPosition(x + random(-300000, 300000), y + random(-300000, -302000)):setSize(random(10, 500))
			elseif distanceTooFar == 5 then
				asteroidList[n]:setPosition(x + random(300000, 302000), y + random(300000, 302000)):setSize(random(10, 500))
			elseif distanceTooFar == 6 then
				asteroidList[n]:setPosition(x + random(-300000, -302000), y + random(300000, 302000)):setSize(random(10, 500))
			elseif distanceTooFar == 9 then
				asteroidList[n]:setPosition(x + random(300000, 302000), y + random(-300000, -302000)):setSize(random(10, 500))
			elseif distanceTooFar == 10 then
				asteroidList[n]:setPosition(x + random(-300000, -302000), y + random(-300000, -302000)):setSize(random(10, 500))
			end
		end
	end
end

------------------------------------
-- Gestion des phases de missions
------------------------------------

-- Premi�re phase de la mission
function phase1(delta)
--	if delta > 0 then
--		mission_state = phase2
--	end
	asteroidUpdate()
end

function phase4End(delta)
    --Nothing to do
end
--------------------
-- Communications
--------------------

function shipComms()
	if mission_state == phase1 then
		setCommsMessage([[blablabla]])
		return
	end

    setCommsMessage([[blablabla]])
end

----------------------------------
-- Update
----------------------------------

function update(delta)
	if mission_state ~= nil then
		mission_state(delta)
    end
end