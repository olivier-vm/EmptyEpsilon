--[[
	Everything in the science database files is just readable data for the science officer.
	This data does not affect the game in any other way and just contributes to the lore.
--]]
space_objects = ScienceDatabase():setName('Cosmos')
item = space_objects:addEntry('Ast�ro�de')
item:setLongDescription([[Les ast�ro�des sont assimilables � des plan�tes mineures, g�n�rallement d'un diam�tre d�passant rarement les quelques kilom�tres. Les variantes plus grosses sont parfois appel�es plan�to�des]])

item = space_objects:addEntry('Micro-n�buleuse')
item:setLongDescription([[On entend par n�buleuse toute r�gion du milieu interstellaire particuli�rement riche soit en gaz (le plus souvent de l'hydrog�ne), soit en poussi�re interstellaire, soit des deux. Les n�buleuses peuvent former des syst�mes d'�toiles en s'effondrant gravitationnellement.

La taille des n�buleuses est gigantesque. Un nuage s'�tend sur des espaces joignant plusieurs �toiles.

Il arrive, en navigant, de tomber sur des ph�nom�ne ponctuels reprenant les caract�ristiques d'une n�buleuse, sur des tailles � l'�chelle des vaisseaux. Des tailles de plusieurs dizaine d'unit�s de distance de voyage spatiale. On appelle couremment ces ph�nom�nes des micro-n�buleuses.

A cause de la nature gazeuse et des particules contenues dans ces micron�buleuses, la plupart des technologies de scan et de radar utilis�es en astronavigation ne peuvent p�n�trer ces nuages. Les officiers scientifiques de l'�quipage doivent alors se fier aux sondes et � leurs observations visuelles.]])

item = space_objects:addEntry('Micro singularit�')
item:setLongDescription([[Abusivement commun�ment appel�es mini trou noir. Il s'agit de zone de l'espace ayant un comportement ressemblant � un trou noir mais sur une �tendue bien plus r�duite, qui n'affecte que son environnement proche. Les forces gravitationnelles � leurs abords sont gigantesques. Ces micro-singularit�s ne s'�tendent pas, ne grossissent pas, et leur masse ne semble pas augmenter malgr� ce qu'elles absorbent (d'apr�s des mesures effectu�es par des unit�s sp�cialis�es de M�bius). Elles restent permanente (semble-t-il).

Il pourrait s'agir de reliquat ou d'effet de bord de technologies oubli�es des "Premiers". Des restes r�manents de guerres spatiales du pass�. Comme des sortes de mines gravitationnelles.

D'autre th�ories parlent d'un lien direct avec LA singularit� qui est apparue aux abords de Khayyam. Il s'agirait d'une manifestation indirecte de cette singularit�, qui s'�tend donc bien au del� de sa position.

Les micro-singularit�s n'apparaissent que sur les d�tecteurs radars, elles n'ont pas d'apparence visuelle, puisqu'elles absorbent tout ce qui passe � leur port�e (on ne voit que du noir... dans le noir vide de l'espace).]])


--item = space_objects:addEntry('Wormhole')
--item:setLongDescription([[A wormhole, also known as an Einstein-Rosen bridge, is a phenomena that connects two points of spacetime. WARP drives operate in a similar fashion, but instead of being created at will, a wormhole occupies a specific location in space. Objects that enter a wormhole instantaneously emerge from the other end, which might be anywhere from a few feet to thousands of light years away. 
--
--Wormholes are rare, and most can move objects in only one direction. Traversable wormholes, which are stable and allow for movement in both directions, are even rarer. All wormholes generate tremendous sensor activity, which an astute science officer can detect even through disruptions such as nebulae.]])

----------

weapons = ScienceDatabase():setName('Armement')
item = weapons:addEntry('Missile � guidage')
item:addKeyValue('Port�e', '5.4u')
item:addKeyValue('D�gats', '35')
item:setLongDescription([[Il s'agit d'un missile � asservissement de trajectoire. Il est le cheval de bataille dans l'arsenal de combat. Sa taille lui permet de se loger aussi bien dans des fr�gates que de plus lourds vaisseaux. Il est souvent utilis� dans plus d'un tube lanceur.

L'autoguidage (apr�s ciblage d'un ennemi) permet au missile de se d�placer de fa�on totalement automatique, sans n�cessiter d'op�rateur ("tire et oublie"). Le composant du missile servant � d�tecter la cible est l'autodirecteur ("t�te chercheuse" dans le langage commun).

Il est possible aussi de travailler en mode de "t�l�guidage indirect", dans lequel l'artilleur donne une direction fixe au missile, et modifie sa trajectoire pendant le tir.]])

item = weapons:addEntry('Nano')
item:addKeyValue('Port�e', '5.4u')
item:addKeyValue('Rayon explosion', '1u')
item:addKeyValue('D�gats au centre', '160')
item:addKeyValue('D�gats aux bords', '30')
item:setLongDescription([[Le terme officiel est MG-ELNP, un Missile Guid� � Expulsion Localis�e de Nano Particules.

Ce type d'arme tr�s dangereuse n'est utilis�e que dans les situations imp�rieuses. Comme le missile � guidage classique, le "nano" (MG-ELNP) peut cibler et suivre un ennemi, mais il tourne et et se d�place plus lentement.

Son explosion lib�re un nuage de nanos qui p�n�tre dans le vaisseau et "ronge" lit�rallement instantan�ment la structure de la coque, provoquant une implosion imm�diate sur les petits vaisseaux, tandis que les plus gros subissent de tr�s gros dommages.

Si plusieurs vaisseaux se trouvent dans la port�e de l'explosion, ils peuvent �tre tous atteints par le nuage de nanos.

De nombreux commandants s'opposent � l'utilisation des "nanos", � cause des risques encourus par des d�gats colat�raux. Lors des combats entrem�l�s, il est tr�s difficile d'estimer si les nuages nanos ne vont pas provoquer des d�gats sur ses propres forces arm�es.]])

item = weapons:addEntry('Mine')
item:addKeyValue('Distance de largage', '1.2u')
item:addKeyValue('D�clenchement �', '0.6u')
item:addKeyValue('Rayon explosion', '1u')
item:addKeyValue('D�gats au centre', '160')
item:addKeyValue('D�gats aux bords', '30')
item:setLongDescription([[Les mines sont souvent plac�es en p�rim�tres de d�fenses autour d'un spatiodock. On trouve parfois aussi de vieux champs de mines perdu dans le syt�me plan�taire, datant d'anciennes guerres ou batailles.

Les insurg�s font souvent usage de mines pour pi�ger les transporteurs de marchandises afin de les obliger � changer de trajectoire, et pouvoir ainsi les capturer plus facilement.

Certains capitaines utilisent les mines comme arme offensive, mais leur d�tonation � retardement et rayon d'eplosion rend ces manoeuvres risqu�es.]])

item = weapons:addEntry('Axo-IEM')
item:addKeyValue('Port�e', '5.4u')
item:addKeyValue('Rayon explosion', '1u')
item:addKeyValue('D�gats au centre', '160')
item:addKeyValue('D�gats aux bords', '30')
item:setLongDescription([[Missile Axonotmesis � Impulsion Electro Magn�tique.

C'est une variante des armes axo � grande �chelle, qui affecte en partie le personnel de bord, et qui g�n�re en plus une d�flagration �lectromagn�tique qui affecte les �quipements �lectroniques d'un navire.

Cela affecte donc les boucliers sans atteindre la coque du navire.

La taille de ces missiles �tant fort r�duite, il est possible d'en stocker beaucoup plus � bord d'un vaisseau.

De nombreux commandants et amiraux de guerre p�f�rent utiliser cette arme (� la place des dangereuses nanos), qui lorsque les boucliers de la cible sont d�sactiv�s, en profite pour tirer des salves de lasers bien cibl�es pour achever le vaisseau.]])

item = weapons:addEntry('Rafale')
item:addKeyValue('Port�e', '5.4u')
item:addKeyValue('D�gats', '7 par missile, 35 au total')
item:addKeyValue('Nombre de tirs', '5')
item:setLongDescription([[Il s'agit d'un torpillage � grande vitesse en rafale de plusieurs obus. Le tir s'effectue en ligne droite, sans correction de trajectoire possible.

Ce type d'armement se retrouvera g�n�rallement sur les simples vaisseaux car ne n�cessite pas de syst�me de guidage assist�.

Chaque tir correspond � l'�jection de 5 obus cin�tiques. Les chances de toucher une cible sont d'autant plus grande que la pr�cision du tir est correctement ajust�e. Il s'agit d'un travail de concert entre le pilote et l'artilleur.]])

----------

planetarium = ScienceDatabase():setName('Planetarium')
item = planetarium:addEntry('Bhatthi')
item:addKeyValue('Population', '125.000 habitants')
item:setLongDescription([[C'est la plan�te la plus proche de Khayyam. Transark a organis� deux lignes de transport physique. C'est dire si elles sont proches et en relation directe.

Bhatthi n'a pas grand-chose de sp�cial si ce n'est ses habitants eux-m�mes. Ils ont une propension � la f�te si bien que certains secteurs ont d�cr�t� que la nuit s'�tendait jusqu'� 3 heures apr�s le lever du soleil et commen�ait 1 heure plus t�t que son coucher.

Hormis ce d�tail, Bhatthi poss�de autant d'usines que Khayyam et reste un des points n�vralgiques de notre expansion dans l'arche.

C'est l� qu'on proc�de aux recherches sur les hyper-technologies car M�bius s'y est install� et Polaris y a son antenne.]])

item = planetarium:addEntry('Choor')
item:addKeyValue('Population', '125.000 habitants')
item:setLongDescription([[Choor est la seule plan�te o� l'on trouve � l'�tat naturel les prot�ines n�cessaires � notre nutrition. M�me si les archotypes cr�ent l'essentiel de notre nourriture, Choor exporte ces prot�ines, ce qui permet d'avoir, pour certains privil�gi�s, des repas plus go�teux. Encore faut-il qu'ils se procurent aussi les produits frais.

C'est sur Choor qu'on retrouve le plus d'Intouchables, la facilit� qu'ils ont de pouvoir se nourrir n'y est pas pour rien.

Choor est la plan�te la plus proche de Soleil-16, notre �toile, et sa v�g�tation y est tr�s luxuriante. Vu le pourcentage d'eau sur cette plan�te, on la surnomme parfois la Serre ou encore le Sauna, en �t�.]])

item = planetarium:addEntry('Keisi-C')
item:addKeyValue('Population', '315.000 habitants')
item:setLongDescription([[Keisi-C ou l'entrep�t est situ�e strat�giquement sur une orbite permettant d'acc�der assez facilement aux autres plan�tes (c'est relatif). C'est sur Keisi-C que sont stock�es les marchandises en transit. Cette plan�te est aussi le grenier de Khayyam car c'est de l� que sont cr��es les r�serves de nourriture via l'un des principaux archog�n�rateurs de l'arche.

Transkark s'y est �tablie, et y entretient sa flotte de vaisseaux.]])

item = planetarium:addEntry('Khanija')
item:addKeyValue('Population', '75.000 habitants')
item:setLongDescription([[C'est un satellite de Bhatthi. On ne peut donc pas vraiment parler de plan�te mais comme elle est terraform�e comme les autres, on la place dans le lot. Elle reste cependant plus grande que Maatrah.

Khanija est surtout connue pour les esp�ces florales assez atypiques qu'elle rec�le et dont on extrait bon nombre des substances utilis�es dans les Bulles.]])

item = planetarium:addEntry('Khatara')
item:addKeyValue('Population', 'aucune')
item:setLongDescription([[La dangereuse, comme on l'appelle. Non pas que la vie sur place y serait risqu�e, non c'est plus le chemin pour y arriver qui l'est. Khatara est entour�e de barri�res d'ast�ro�des extr�mement dangereuses et y p�n�trer demande �norm�ment de pr�cautions. La valeur des vaisseaux �tant des plus importantes, s'y rendre de fa�on fr�quente est donc hors de question.

L'instabilit� des barri�res fait qu'il est fr�quent de voir des ast�ro�des s'�craser sur la proche Maatrah. Lorsqu'une fois tous les 3 ans leurs r�volutions se rapprochent. Heureusement, ils sont assez petits et la plupart se d�sagr�gent avant de toucher sol.

Les deux missions envoy�es pr�c�demment furent un fiasco et ne revinrent jamais. Aussi, Transark et l'Arcade ont d�cid� de postposer les nouvelles tentatives � plus tard.]])

item = planetarium:addEntry('Khayyam')
item:addKeyValue('Population', '1.300.000 habitants')
item:setLongDescription([[Khayyam est la plan�te-m�re. Elle est donc la seule � avoir des archos en permatech. Ces derniers, � l'�preuve du temps, servent encore et toujours, nuit et jour, car nous sommes toujours dans la phase ascendante de la reprise de l'arche. L'archog�n�rateur produit essentiellement des machines finies car nos usines et manufactures restent encore assez peu nombreuses par rapport aux besoins que nous avons.

Khayyam ressemble � ce que devait �tre la Terre du temps des Premiers car sa taille et sa masse sont assez similaires.

Comme toute plan�te-m�re, c'est l� que l'Arcade et les si�ges de la plupart des patries sont install�s.]])

item = planetarium:addEntry('Maatrah')
item:addKeyValue('Population', '53.000 habitants')
item:setLongDescription([[Maatrah a un satellite mort en orbite autour d'elle. Il n'a jamais �t� terraform�. Son nom officiel est K�phar-TX-1 mais tout le monde le nomme K�phar.

Maatrah est la plus petite des plan�tes de Khayyam. Son noyau rec�le �norm�ment de m�taux pr�cieux et bon nombre de mines y furent d�ploy�es avant l'abandon. On raconte que la croute terrestre de Maatrah est devenue un gruy�re � force d'extraire les richesses de son sol.]])

item = planetarium:addEntry('Svarga')
item:addKeyValue('Population', 'aucune')
item:setLongDescription([[Svarga est la plan�te la plus �loign�e du syst�me. Les experts de M�bius ont rapport� que son bouclier magn�tique semble maintenant trop affaibli pour y vivre correctement. La vie qui s'y trouve est essentiellement de type lichen et insectes. Auparavant, au 24�me si�cle, Svarga �tait une plan�te comme une autre, on la surnommait m�me le paradis.

Une mission a �t� d�p�ch�e r�cemment pour �tudier l'�volution de la plan�te car une des hypoth�ses est que la singularit� aurait �t� � l'origine de ces changements sur Svarga.]])

item = planetarium:addEntry('Videsh')
item:addKeyValue('Population', '700 habitants')
item:setLongDescription([[Videsh est une plan�te ressources. C'est-�-dire qu'il n'y fait pas bon vivre et que son principal attrait vient du fait qu'elle contient bon nombre de mati�res primaires utiles. Ainsi on y retrouve des gaz d�riv�s et autres sources d'�nergie. Il n'existe qu'un secteur sur Videsh et les gens qui y r�sident ne g�rent essentiellement que l'envoi des ressources hors de leur plan�te.

Media 16 y a organis� il y a quelques ann�es des �missions et jeux de survie, mais cela n'a pas eu le succ�s escompt� suite � la contamination d'un participant par des nanos.]])