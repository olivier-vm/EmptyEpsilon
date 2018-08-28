--[[				  Corvette
Corvettes are the common large ships. Larger then a frigate, smaller then a dreadnaught.
They generally have 4 or more shield sections. Run with a crew of 20 to 250.
This class generally has WARPdrives or RLSdrives. But lack the manouverbility that is seen in frigates.

They come in 3 different subclasses:
* Destroyer: Combat oriented ships. No science, no transport. Just death in a large package.
* Support: Large scale support roles. Drone carriers fall in this category. As well as mobile repair centers.
* Freighter: Large scale transport ships. Most common here are the WARP freighters, using specialized WARPdrives to cross large distances with large amounts of cargo.
----------------------------------------------------------]]

--[[----------------------Destroyers----------------------]]

template = ShipTemplate():setName("Enhydra X23"):setClass("Corvette", "Destroyer"):setModel("battleship_destroyer_1_upgraded")

template:setDescription([[L'Enhydra X23 est le plus petit mod�le de vaisseau destroyer, et sa combinaison "taille de fr�gate" et "puissance de corvette" en fait un excellent vaisseau d'escorte pour d�fendre de plus gros vaisseaux contre de multiple petits ennemis.

L'Enhydra X23 est �quipp� d'un puissant moteur RLS, il peut donc aussi servir de navire de patrouille sur longues distances.]])
template:setRadarTrace("radar_dread.png")
template:setHull(100)
template:setShields(200, 200, 200, 200)
template:setSpeed(30, 3.5, 5)
template:setWARPDrive(true)
--					Arc, Dir, Range, CycleTime, Dmg
template:setLASER(0,100, -20, 1500.0, 6.0, 8)
template:setLASER(1,100,  20, 1500.0, 6.0, 8)
template:setLASER(2,100, 180, 1500.0, 6.0, 8)
template:setTubes(4, 10.0)
template:setWeaponStorage("HVLI", 20)
template:setWeaponStorage("Homing", 4)
template:setTubeDirection(0, -90)
template:setTubeDirection(1, -90)
template:setTubeDirection(2,  90)
template:setTubeDirection(3,  90)

variation = template:copy("Enhydra"):setType("playership")

variation:setDescription([[Un navire Enhydra X23 remani� pour plus de t�ches g�n�rales. Tr�s polycalent. Le grand syst�me de bouclier a �t� remplac� par des syt�mes avanc�s de manoeuvre de combat. Le moteur RLS est de toute derni�re g�n�ration.

Ses lanceurs de missiles sont aussi adapt�s � des types vari�s de munitions. Confondre un Enhydra avec un Enhydra X23 serait une erreur qui pourrait vous co�ter la vie.]])
variation:setShields(200, 200)
variation:setHull(250)
variation:setSpeed(90, 10, 20)
variation:setRLSSpeed(900)
variation:setWARPDrive(false)
variation:setCombatManeuver(400, 250)
variation:setLASER(2, 0, 0, 0, 0, 0)
variation:setWeaponStorage("Homing", 12)
variation:setWeaponStorage("Nuke", 4)
variation:setWeaponStorage("Mine", 8)
variation:setWeaponStorage("EMP", 6)
variation:setTubes(5, 8.0) -- Amount of torpedo tubes, and loading time of the tubes.
variation:weaponTubeDisallowMissle(0, "Mine"):weaponTubeDisallowMissle(1, "Mine")
variation:weaponTubeDisallowMissle(2, "Mine"):weaponTubeDisallowMissle(3, "Mine")
variation:setTubeDirection(4, 180):setWeaponTubeExclusiveFor(4, "Mine")

variation:addRoomSystem(1, 0, 2, 1, "Maneuver");
variation:addRoomSystem(1, 1, 2, 1, "LASERWeapons");
variation:addRoom(2, 2, 2, 1);

variation:addRoomSystem(0, 3, 1, 2, "RearShield");
variation:addRoomSystem(1, 3, 2, 2, "Reactor");
variation:addRoomSystem(3, 3, 2, 2, "RLS");
variation:addRoomSystem(5, 3, 1, 2, "WARPDrive");
variation:addRoom(6, 3, 2, 1);
variation:addRoom(6, 4, 2, 1);
variation:addRoomSystem(8, 3, 1, 2, "FrontShield");

variation:addRoom(2, 5, 2, 1);
variation:addRoomSystem(1, 6, 2, 1, "MissileSystem");
variation:addRoomSystem(1, 7, 2, 1, "Impulse");

variation:addDoor(1, 1, true);
variation:addDoor(2, 2, true);
variation:addDoor(3, 3, true);
variation:addDoor(1, 3, false);
variation:addDoor(3, 4, false);
variation:addDoor(3, 5, true);
variation:addDoor(2, 6, true);
variation:addDoor(1, 7, true);
variation:addDoor(5, 3, false);
variation:addDoor(6, 3, false);
variation:addDoor(6, 4, false);
variation:addDoor(8, 3, false);
variation:addDoor(8, 4, false);

--Airlock doors
--variation:addDoor(2, 2, false);
--variation:addDoor(2, 5, false);

-- Duplicate pour apparition dans la database
variation = template:copy("Enhydra*")
variation:setDescription([[Un navire Enhydra X23 remani� pour plus de t�ches g�n�rales. Tr�s polycalent. Le grand syst�me de bouclier a �t� remplac� par des syt�mes avanc�s de manoeuvre de combat. Le moteur RLS est de toute derni�re g�n�ration.

Ses lanceurs de missiles sont aussi adapt�s � des types vari�s de munitions. Confondre un Enhydra avec un Enhydra X23 serait une erreur qui pourrait vous co�ter la vie.]])
variation:setShields(200, 200)
variation:setHull(250)
variation:setSpeed(90, 10, 20)
variation:setRLSSpeed(900)
variation:setWARPDrive(false)
variation:setCombatManeuver(400, 250)
variation:setLASER(2, 0, 0, 0, 0, 0)
variation:setWeaponStorage("Homing", 12)
variation:setWeaponStorage("Nuke", 4)
variation:setWeaponStorage("Mine", 8)
variation:setWeaponStorage("EMP", 6)
variation:setTubes(5, 8.0) -- Amount of torpedo tubes, and loading time of the tubes.
variation:weaponTubeDisallowMissle(0, "Mine"):weaponTubeDisallowMissle(1, "Mine")
variation:weaponTubeDisallowMissle(2, "Mine"):weaponTubeDisallowMissle(3, "Mine")
variation:setTubeDirection(4, 180):setWeaponTubeExclusiveFor(4, "Mine")

--

template = ShipTemplate():setName("Starhammer II"):setClass("Corvette", "Destroyer"):setModel("battleship_destroyer_4_upgraded")
template:setDescription([[Contrary to its predecessor, the Starhammer II lives up to its name. By resolving the original Starhammer's power and heat management issues, the updated model makes for a phenomenal frontal assault ship. Its low speed makes it difficult to position, but when in the right place at the right time, even the strongest shields can't withstand a Starhammer's assault for long.]])
template:setRadarTrace("radar_dread.png")
template:setHull(200)
template:setShields(450, 350, 150, 150, 350)
template:setSpeed(35, 6, 10)
template:setWARPDrive(true)
--					Arc, Dir, Range, CycleTime, Dmg
template:setLASER(0, 60, -10, 2000.0, 8.0, 11)
template:setLASER(1, 60,  10, 2000.0, 8.0, 11)
template:setLASER(2, 60, -20, 1500.0, 8.0, 11)
template:setLASER(3, 60,  20, 1500.0, 8.0, 11)
template:setTubes(2, 10.0)
template:setWeaponStorage("HVLI", 20)
template:setWeaponStorage("Homing", 4)
template:setWeaponStorage("EMP", 2)
template:weaponTubeDisallowMissle(1, "EMP")

--[[-----------------------Support-----------------------]]

-- The weapons-platform is a stationary platform with LASER-weapons. It's extremely slow to turn, but it's LASER weapons do a huge amount of damage.
-- Smaller ships can dock to this platform to re-supply.
template = ShipTemplate():setName("Defense platform"):setClass("Corvette", "Support"):setModel("space_station_4")
template:setDescription([[This stationary defense platform operates like a station, with docking and resupply functions, but is armed with powerful LASER weapons and can slowly rotate. Larger systems often use these platforms to resupply patrol ships.]])
template:setRadarTrace("radartrace_smallstation.png")
template:setHull(150)
template:setShields(120, 120, 120, 120, 120, 120)
template:setSpeed(0, 0.5, 0)
template:setDockClasses("Starfighter", "Frigate")
--					Arc, Dir, Range, CycleTime, Dmg
template:setLASER(0, 30,   0, 4000.0, 1.5, 20)
template:setLASER(1, 30,  60, 4000.0, 1.5, 20)
template:setLASER(2, 30, 120, 4000.0, 1.5, 20)
template:setLASER(3, 30, 180, 4000.0, 1.5, 20)
template:setLASER(4, 30, 240, 4000.0, 1.5, 20)
template:setLASER(5, 30, 300, 4000.0, 1.5, 20)

-- A�rodock Trigone 1 - Triton (Petit)
	
template = ShipTemplate():setName("A�rodock Trigone 1 - Phoque"):setClass("Corvette", "Support"):setModel("space_station_4")
template:setDescription([[Station spatiale de classe "Phoque". A�rogare du Trigone Arm�. Poss�de de tr�s bons syst�mes de d�fense � rayons, un blindage moyen, et 2 niveaux de boucliers.

Peut accueillir des chasseurs stellaires et des fr�gates.]])
template:setRadarTrace("radartrace_smallstation.png")
template:setHull(400)
template:setShields(1200, 1200)
template:setSpeed(0, 0.5, 0)
template:setDockClasses("Starfighter", "Frigate")
--					Arc, Dir, Range, CycleTime, Dmg
template:setLASER(0, 30,   0, 2000.0, 1.5, 10)
template:setLASER(1, 30,  60, 2000.0, 1.5, 10)
template:setLASER(2, 30, 120, 2000.0, 1.5, 10)
template:setLASER(3, 30, 180, 2000.0, 1.5, 10)
template:setLASER(4, 30, 240, 2000.0, 1.5, 10)
template:setLASER(5, 30, 300, 2000.0, 1.5, 10)

-- A�rodock Trigone 2 - Dauphin (Moyen)
	
template = ShipTemplate():setName("A�rodock Trigone 2 - Dauphin"):setClass("Corvette", "Support"):setModel("space_station_3")
template:setDescription([[Station spatiale de classe "Dauphin". A�rogare du Trigone Arm�. Poss�de de tr�s bons syst�mes de d�fense � rayons, un gros blindage, et 3 niveaux de boucliers.

Peut accueillir des chasseurs stellaires et des fr�gates.]])
template:setRadarTrace("radartrace_mediumstation.png")
template:setHull(600)
template:setShields(1200, 1200, 1200)
template:setSpeed(0, 1, 0)
template:setDockClasses("Starfighter", "Frigate")
--					Arc, Dir, Range, CycleTime, Dmg
template:setLASER(0, 30,   0, 3000.0, 1.5, 15)
template:setLASER(1, 30,  60, 3000.0, 1.5, 15)
template:setLASER(2, 30, 120, 3000.0, 1.5, 15)
template:setLASER(3, 30, 180, 3000.0, 1.5, 15)
template:setLASER(4, 30, 240, 3000.0, 1.5, 15)
template:setLASER(5, 30, 300, 3000.0, 1.5, 15)

-- A�rodock Trigone 3 - Requin (Grand)
	
template = ShipTemplate():setName("A�rodock Trigone 3 - Epaulard"):setClass("Corvette", "Support"):setModel("space_station_2")
template:setDescription([[Station spatiale de classe "Epaulard". A�rogare du Trigone Arm�. Poss�de de tr�s bons syst�mes de d�fense � rayons, un gros blindage, et 4 niveaux de boucliers.

Peut accueillir des chasseurs stellaires et des fr�gates.]])
template:setRadarTrace("radartrace_largestation.png")
template:setHull(800)
template:setShields(1200, 1200, 1200, 1200)
template:setSpeed(0, 1, 0)
template:setDockClasses("Starfighter", "Frigate")
--					Arc, Dir, Range, CycleTime, Dmg
template:setLASER(0, 30,   0, 4000.0, 1.5, 20)
template:setLASER(1, 30,  60, 4000.0, 1.5, 20)
template:setLASER(2, 30, 120, 4000.0, 1.5, 20)
template:setLASER(3, 30, 180, 4000.0, 1.5, 20)
template:setLASER(4, 30, 240, 4000.0, 1.5, 20)
template:setLASER(5, 30, 300, 4000.0, 1.5, 20)

-- A�rodock Trigone 4 - Rorqual (Enorme)
-- voir shipTemplates_Dreadnaught.lua

--[[----------------------Freighters----------------------]]

-- D�marrage boucle globale
for cnt=1,5 do

	template = ShipTemplate():setName("Transport personnes " .. cnt):setClass("Corvette", "Freighter"):setModel("transport_1_" .. cnt)
	template:setDescription([[Ces cargos sont concus pour le transport des personnes. Leur version militaire peut transporter des troupes du Trigone Arm�e, le personnel du Trigone Secours, et le mat�riel de combat.]])
	template:setHull(100)
	template:setShields(50, 50)
	template:setSpeed(60 - 5 * cnt, 6, 10)
	template:setRadarTrace("radar_transport.png")

-- Pas de saut jump/warp dans clones
--	  if cnt > 2 then
--		  variation = template:copy("Personnel WARP Freighter " .. cnt)
--		  variation:setWARPDrive(true)
--	  end

	--[[ Cargo joueur
	--]]
	if cnt == 2 then
		variation = template:copy("Transport personnes RLS"):setType("playership")
		variation:setDescription([[Transport personne de cat�gorie 2. Ce type de cargo est concu pour le transport des personnes. Leur version militaire peut transporter des troupes du Trigone Arm�e, le personnel du Trigone Secours, et le mat�riel de combat. Le cargo contient aussi de petites soute ayant tout un environnement de stabilisation afin de transporter du mat�riel, des machineries d�licates, et des instrumentations complexes. En plus petite quantit� qu'un cargo de fret classique.

Le cargo est �quipp� en plus d'un moteur � impulsion RLS 4000/100P afin de pouvoir parcourir de tr�s longues longues distances (inter-plan�taires) rapidement. C'est une version hybride impulsion/RLS. L'acc�l�ration du moteur est brid�e afin de rendre les transport de passager agr�able. Le moteur � impulsion utilise une d�rivation du moteur RLS pour atteindre des vitesses importantes. L'utilisation unique du moteur RLS permet une acc�l�ration rapide mais la vitesse est fortment limit�e (moins importante qu'avec le moteur � impulsion). Les version militaires sont moins brid�es mais reste dans un spectre d'acc�l�ration humainement supportable.

Les compartiments arri�res du cargo contiennent 8 mines spatio-sismiques, n�cessaires en cas d'urgence dans les zones spatiolithique.]])
		--variation:setShields(200, 200)
		--variation:setHull(250)
		variation:setSpeed(4000, 10, 10)
		variation:setRLSSpeed(200)
		variation:setCombatManeuver(200, 100)
		variation:setLASER(2, 0, 0, 0, 0, 0)
		--variation:setWeaponStorage("Homing", 12)
		--variation:setWeaponStorage("Nuke", 4)
		--variation:setWeaponStorage("Mine", 8)
		--variation:setWeaponStorage("EMP", 6)
		--variation:setTubes(5, 8.0) -- Amount of torpedo tubes, and loading time of the tubes.
		--variation:weaponTubeDisallowMissle(0, "Mine"):weaponTubeDisallowMissle(1, "Mine")
		--variation:weaponTubeDisallowMissle(2, "Mine"):weaponTubeDisallowMissle(3, "Mine")
		--variation:setTubeDirection(4, 180):setWeaponTubeExclusiveFor(4, "Mine")
		variation:addRoomSystem(1, 1, 7, 1, "MissileSystem");
		variation:addRoomSystem(0, 3, 1, 2, "RearShield");
		variation:addRoomSystem(1, 3, 2, 2, "Reactor");
		variation:addRoomSystem(3, 3, 1, 2, "RLS");
		variation:addRoomSystem(4, 3, 1, 2, "WARPDrive");
		variation:addRoomSystem(5, 3, 2, 2, "Impulse");
		variation:addRoomSystem(9, 3, 2, 2, "Maneuver");
		variation:addRoomSystem(11, 3, 1, 2, "FrontShield");
		variation:addRoomSystem(1, 6, 7, 1, "LASERWeapons");
		variation:addRoom(2, 2, 2, 1);
		variation:addRoom(2, 5, 2, 1);
		variation:addRoom(7, 3, 2, 2);
		variation:addRoom(5, 2, 2, 1);
		variation:addRoom(5, 5, 2, 1);
		--variation:addDoor(1, 1, true);
		variation:addDoor(2, 2, true);
		variation:addDoor(5, 2, true);
		variation:addDoor(1, 3, false);
		variation:addDoor(2, 3, true);
		variation:addDoor(3, 3, true);
		variation:addDoor(4, 3, false);
		variation:addDoor(5, 3, false);
		variation:addDoor(6, 3, true);
		variation:addDoor(7, 3, false);
		variation:addDoor(9, 3, false);
		variation:addDoor(11, 3, false);
		variation:addDoor(2, 5, true);
		variation:addDoor(3, 5, true);
		variation:addDoor(5, 5, true);
		variation:addDoor(3, 6, true);
		variation:addDoor(5, 6, true);
		
		-- Duplicate pour apparition dans la database
		variation = template:copy("Transport personnes RLS*")
		variation:setDescription([[Transport personne de cat�gorie 2. Ce type de cargo est concu pour le transport des personnes. Leur version militaire peut transporter des troupes du Trigone Arm�e, le personnel du Trigone Secours, et le mat�riel de combat. Le cargo contient aussi de petites soute ayant tout un environnement de stabilisation afin de transporter du mat�riel, des machineries d�licates, et des instrumentations complexes. En plus petite quantit� qu'un cargo de fret classique.

Le cargo est �quipp� en plus d'un moteur � impulsion RLS 900 afin de pouvoir parcourir de tr�s longues longues distances (inter-plan�taires) rapidement. Toutefois l'acc�l�ration du moteur est brid�e afin de rendre les transport de passager agr�able. Les version militaires sont moins brid�es mais reste dans un spectre d'acc�l�ration humainement supportable.

Les compartiments arri�res du cargo contiennent 8 mines spatio-sismiques, n�cessaires en cas d'urgence dans les zones spatiolithique.]])
		variation:setSpeed(4000, 10, 10)
		variation:setRLSSpeed(200)
		variation:setCombatManeuver(200, 100)
		variation:setLASER(2, 0, 0, 0, 0, 0)
		variation:setWeaponStorage("Mine", 8)
		variation:weaponTubeDisallowMissle(0, "Mine"):weaponTubeDisallowMissle(1, "Mine")
		variation:weaponTubeDisallowMissle(2, "Mine"):weaponTubeDisallowMissle(3, "Mine")
		variation:setTubeDirection(4, 180):setWeaponTubeExclusiveFor(4, "Mine")
	end

	template = ShipTemplate():setName("Cargo Marchandise " .. cnt):setClass("Corvette", "Freighter"):setModel("transport_2_" .. cnt)
	template:setDescription([[Ces cargos transportent de grosses quantit�s de marchandises sur de longues distances. Ils sont g�n�ralement affret�s pour l'Utanscale et Technocorp.

Leurs baies de chargement poss�dent des controles de climatisation, et des syst�mes de stabilisation, ainsi que certaines structures en permatech qui maintiennent le cargo en bon �tat.]])
	template:setHull(100)
	template:setShields(50, 50)
	template:setSpeed(60 - 5 * cnt, 6, 10)
	template:setRadarTrace("radar_transport.png")

-- Pas de saut jump/warp dans clones
--	  if cnt > 2 then
--		  variation = template:copy("Goods WARP Freighter " .. cnt)
--		  variation:setWARPDrive(true)
--	  end

	template = ShipTemplate():setName("Cargo Dechets " .. cnt):setClass("Corvette", "Freighter"):setModel("transport_3_" .. cnt)
	template:setDescription([[Ces cargos sont sp�cialement con�us pour contenir les d�chets, et des mati�re premi�res � ressources.

Ils sont �quip�s de chaines automatis�e de tri, et de compacteurs � d�chets. Ils poss�dent moins de syst�me de stabilisation que les autres cargos.

Ces cargos sont utilis�s par Technocorp afin d'acheminer les d�chets dans les grandes stations de recyclage pr�sentes dans l'espace, ou pour transporter les ressources primaires provenant des �normes carri�res de certaines. On les rencontre donc en grand nombres aux alentours des plan�tes "ressources" (ex: Videsh dans l'arche Khayyam).]])
	template:setHull(100)
	template:setShields(50, 50)
	template:setSpeed(60 - 5 * cnt, 6, 10)
	template:setRadarTrace("radar_transport.png")

-- Pas de saut jump/warp dans clones
--	  if cnt > 2 then
--		  variation = template:copy("Garbage WARP Freighter " .. cnt)
--		  variation:setWARPDrive(true)
--	  end

	template = ShipTemplate():setName("Cargo Equipement " .. cnt):setClass("Corvette", "Freighter"):setModel("transport_4_" .. cnt)
	template:setDescription([[Les cargos �quipement ont des syst�me de stabilisations et de climatisations sp�cialis�s afin de pouvoir transporter de mani�re s�curis�es les machineries d�licates et de l'instrumentation scientifique.

Ils sont largement utilis�s par Technocorp et M�bius, ainsi que l'Utanscale quand ils s'occupent de certains projets sp�cifiques.]])
	template:setHull(100)
	template:setShields(50, 50)
	template:setSpeed(60 - 5 * cnt, 6, 10)
	template:setRadarTrace("radar_transport.png")

-- Pas de saut jump/warp dans clones
--	  if cnt > 2 then
--		  variation = template:copy("Equipment WARP Freighter " .. cnt)
--		  variation:setWARPDrive(true)
--	  end

	--[[ Cargo joueur
	--]]
	if cnt == 2 then
		variation = template:copy("Cargo Mat�riel RLS"):setType("playership")
		variation:setDescription([[Cargo transark Equipement de cat�gorie 2. Poss�de tout un environnement de stabilisation afin de transporter du mat�riel, des machineries d�licates, et des instrumentations complexes.

Le cargo est �quipp� en plus d'un moteur � impulsion RLS 900 afin de pouvoir parcourir de tr�s longues longues distances (inter-plan�taires) rapidement.

Les compartiments arri�res du cargo contiennent 8 mines spatio-sismiques, n�cessaires en cas d'urgence dans les zones spatiolithique.]])
		--variation:setShields(200, 200)
		--variation:setHull(250)
		variation:setSpeed(90, 10, 20)
		variation:setRLSSpeed(900)
		variation:setCombatManeuver(200, 100)
		variation:setLASER(2, 0, 0, 0, 0, 0)
		--variation:setWeaponStorage("Homing", 12)
		--variation:setWeaponStorage("Nuke", 4)
		variation:setWeaponStorage("Mine", 8)
		--variation:setWeaponStorage("EMP", 6)
		--variation:setTubes(5, 8.0) -- Amount of torpedo tubes, and loading time of the tubes.
		variation:weaponTubeDisallowMissle(0, "Mine"):weaponTubeDisallowMissle(1, "Mine")
		variation:weaponTubeDisallowMissle(2, "Mine"):weaponTubeDisallowMissle(3, "Mine")
		variation:setTubeDirection(4, 180):setWeaponTubeExclusiveFor(4, "Mine")
		variation:addRoomSystem(1, 1, 7, 1, "MissileSystem");
		variation:addRoomSystem(0, 3, 1, 2, "RearShield");
		variation:addRoomSystem(1, 3, 2, 2, "Reactor");
		variation:addRoomSystem(3, 3, 1, 2, "RLS");
		variation:addRoomSystem(4, 3, 1, 2, "WARPDrive");
		variation:addRoomSystem(5, 3, 2, 2, "Impulse");
		variation:addRoomSystem(9, 3, 2, 2, "Maneuver");
		variation:addRoomSystem(11, 3, 1, 2, "FrontShield");
		variation:addRoomSystem(1, 6, 7, 1, "LASERWeapons");
		variation:addRoom(2, 2, 2, 1);
		variation:addRoom(2, 5, 2, 1);
		variation:addRoom(7, 3, 2, 2);
		variation:addRoom(5, 2, 2, 1);
		variation:addRoom(5, 5, 2, 1);
		--variation:addDoor(1, 1, true);
		variation:addDoor(2, 2, true);
		variation:addDoor(5, 2, true);
		variation:addDoor(1, 3, false);
		variation:addDoor(2, 3, true);
		variation:addDoor(3, 3, true);
		variation:addDoor(4, 3, false);
		variation:addDoor(5, 3, false);
		variation:addDoor(6, 3, true);
		variation:addDoor(7, 3, false);
		variation:addDoor(9, 3, false);
		variation:addDoor(11, 3, false);
		variation:addDoor(2, 5, true);
		variation:addDoor(3, 5, true);
		variation:addDoor(5, 5, true);
		variation:addDoor(3, 6, true);
		variation:addDoor(5, 6, true);
		
		-- Duplicate pour apparition dans la database
		variation = template:copy("Cargo Mat�riel RLS*")
		variation:setDescription([[Cargo transark Equipement de cat�gorie 2. Poss�de tout un environnement de stabilisation afin de transporter du mat�riel, des machineries d�licates, et des instrumentations complexes.

Le cargo est �quipp� en plus d'un moteur � impulsion RLS 900 afin de pouvoir parcourir de tr�s longues longues distances (inter-plan�taires) rapidement.

Les compartiments arri�res du cargo contiennent 8 mines spatio-sismiques, n�cessaires en cas d'urgence dans les zones spatiolithique.]])
		variation:setSpeed(90, 10, 20)
		variation:setRLSSpeed(900)
		variation:setCombatManeuver(200, 100)
		variation:setLASER(2, 0, 0, 0, 0, 0)
		variation:setWeaponStorage("Mine", 8)
		variation:weaponTubeDisallowMissle(0, "Mine"):weaponTubeDisallowMissle(1, "Mine")
		variation:weaponTubeDisallowMissle(2, "Mine"):weaponTubeDisallowMissle(3, "Mine")
		variation:setTubeDirection(4, 180):setWeaponTubeExclusiveFor(4, "Mine")
	end

	template = ShipTemplate():setName("Cargo Carburant " .. cnt):setClass("Corvette", "Freighter"):setModel("transport_5_" .. cnt)
	template:setDescription([[Les cargos de carburants transportent principalement de l'hyperdeut�rium, sous diff�rentes formes. Leurs cuves sont pr�vues principalement pour les mat�riaux en phase liquide, gazeuse, en gel, voir plasmatique dans des champs de r�tention magn�tique puissants.
	
Ils sont �quip�s de capteurs internes asservis � des syst�mes de s�curit�s sp�cifique au transport de ce type de mat�riel.
	
Ils peuvent biens�r aussi �tre adapt�s pour transporter d'autres mat�riaux que l'hyperdeut�rium.]])
	template:setHull(100)
	template:setShields(50, 50)
	template:setSpeed(60 - 5 * cnt, 6, 10)
	template:setRadarTrace("radar_transport.png")

-- Pas de saut jump/warp dans clones
--	  if cnt > 2 then
--		  variation = template:copy("Fuel WARP Freighter " .. cnt)
--		  variation:setWARPDrive(true)
--	  end

	--[[ Cargo joueur extracteur de minerai
	--]]
	if cnt == 2 then
		variation = template:copy("Cargo Extracteur RLS"):setType("playership")
		variation:setDescription([[Cargo transark extracteur de minerai de cat�gorie 2. En plus des syt�me d'extraction de gaz et de minerai, le cargo poss�de un syst�me de destruction d'ast�ro�de via des tirs "rafale".
		
Les cale du vaisseau sont adpat�es pour le transport du minerai et du gaz (hyperdeuterium, etc...).

Le cargo est �quipp� en plus d'un moteur � impulsion RLS 300, pour lui permettre certains d�placement plus rapide.

Les compartiments arri�res du cargo contiennent aussi 8 mines spatio-sismiques, n�cessaires en cas d'urgence dans les zones spatiolithique.]])
		--variation:setShields(200, 200)
		--variation:setHull(250)
		variation:setSpeed(90, 10, 20)
		variation:setRLSSpeed(300)
		variation:setCombatManeuver(200, 100)
		variation:setLASER(2, 0, 0, 0, 0, 0)
		--variation:setWeaponStorage("Homing", 12)
		--variation:setWeaponStorage("Nuke", 4)
		variation:setWeaponStorage("Mine", 8)
		--variation:setWeaponStorage("EMP", 6)
		variation:setWeaponStorage("HVLI", 20)
		--variation:setTubes(5, 8.0) -- Amount of torpedo tubes, and loading time of the tubes.
		variation:weaponTubeDisallowMissle(0, "Mine"):weaponTubeDisallowMissle(1, "Mine")
		variation:weaponTubeDisallowMissle(2, "Mine"):weaponTubeDisallowMissle(3, "Mine")
		variation:setTubeDirection(4, 180):setWeaponTubeExclusiveFor(4, "Mine")
		variation:addRoomSystem(1, 1, 7, 1, "MissileSystem");
		variation:addRoomSystem(0, 3, 1, 2, "RearShield");
		variation:addRoomSystem(1, 3, 2, 2, "Reactor");
		variation:addRoomSystem(3, 3, 1, 2, "RLS");
		variation:addRoomSystem(4, 3, 1, 2, "WARPDrive");
		variation:addRoomSystem(5, 3, 2, 2, "Impulse");
		variation:addRoomSystem(9, 3, 2, 2, "Maneuver");
		variation:addRoomSystem(11, 3, 1, 2, "FrontShield");
		variation:addRoomSystem(1, 6, 7, 1, "LASERWeapons");
		variation:addRoom(2, 2, 2, 1);
		variation:addRoom(2, 5, 2, 1);
		variation:addRoom(7, 3, 2, 2);
		variation:addRoom(5, 2, 2, 1);
		variation:addRoom(5, 5, 2, 1);
		--variation:addDoor(1, 1, true);
		variation:addDoor(2, 2, true);
		variation:addDoor(5, 2, true);
		variation:addDoor(1, 3, false);
		variation:addDoor(2, 3, true);
		variation:addDoor(3, 3, true);
		variation:addDoor(4, 3, false);
		variation:addDoor(5, 3, false);
		variation:addDoor(6, 3, true);
		variation:addDoor(7, 3, false);
		variation:addDoor(9, 3, false);
		variation:addDoor(11, 3, false);
		variation:addDoor(2, 5, true);
		variation:addDoor(3, 5, true);
		variation:addDoor(5, 5, true);
		variation:addDoor(3, 6, true);
		variation:addDoor(5, 6, true);

		-- Duplicate pour apparition dans la database
		variation = template:copy("Cargo Extracteur RLS*")
		variation:setDescription([[Cargo transark extracteur de minerai/gaz de cat�gorie 2. En plus des syt�me d'extraction de gaz et de minerai, le cargo poss�de un syst�me de destruction d'ast�ro�de via des tirs "rafale".
		
Les cales du vaisseau sont adpat�es pour le transport du minerai et du gaz (hyperdeuterium, etc...).

Le cargo est �quipp� en plus d'un moteur � impulsion RLS 300, pour lui permettre certains d�placement plus rapide.

Les compartiments arri�res du cargo contiennent aussi 8 mines spatio-sismiques, n�cessaires en cas d'urgence dans les zones spatiolithique.]])
		variation:setSpeed(90, 10, 20)
		variation:setRLSSpeed(300)
		variation:setCombatManeuver(200, 100)
		variation:setLASER(2, 0, 0, 0, 0, 0)
		variation:setWeaponStorage("Mine", 8)
		variation:setWeaponStorage("HVLI", 20)
		variation:weaponTubeDisallowMissle(0, "Mine"):weaponTubeDisallowMissle(1, "Mine")
		variation:weaponTubeDisallowMissle(2, "Mine"):weaponTubeDisallowMissle(3, "Mine")
		variation:setTubeDirection(4, 180):setWeaponTubeExclusiveFor(4, "Mine")
	end

-- Fin de la boucle globale
end

--[[ WARP Carrier
--]]

template = ShipTemplate():setName("Transporteur WARP"):setClass("Corvette", "Freighter"):setModel("transport_4_2")
template:setDescription([[Vaisseau exp�rimental - Concept (non encore fonctionnel)

Le transporteur WARP est un cargo sp�cialis�. Il poss�de un �norme moteur � distorsion WARP exp�rimental ainsi que les gigantesques cellules �nerg�tiques n�cessaire pour le faire fonctionner.

Il est concu pour pouvoir accrocher (arrimage) un autre vaisseau afin de le transporter au plus profond de l'espace.]])
template:setHull(100)
template:setShields(50, 50)
template:setSpeed(50, 6, 10)
template:setRadarTrace("radar_transport.png")
template:setWARPDrive(true)
template:setWARPDriveRange(5000, 100 * 50000) --The WARP carrier can WARP a 100x longer distance then normal WARP drives.
template:setDockClasses("Starfighter", "Frigates", "Corvette")
