--[[ Transark
--]]

transark = FactionInfo():setName("Transark")
transark:setGMColor(0, 0, 255)
transark:setDescription([[La conduite ou le pilotage de n'importe quel v�hicule � moteur (de l'explobuggy au bike en passant par le cargo spatial) passe par l'obtention d'un permis Transark.

Les membres de Transark sont ceux qui transportent les gens et les marchandises dans toutes les arches.]])

--[[ Utanscale
--]]

utanscale = FactionInfo():setName("Utanscale")
utanscale:setGMColor(255, 255, 0)
utanscale:setDescription([[Les Scalers veillent au maintien d'une �conomie saine et dirig�e vers le bien commun.

C'est parmi eux qu'on retrouve tous les commer�ants, quelle que soit leur activit�, mais aussi ceux qui encadrent l'�conomie et rendent possibles les projets locaux.]])

--[[ Technocorp
--]]

technocorp = FactionInfo():setName("Technocorp")
technocorp:setGMColor(255, 102, 0)
technocorp:setDescription([[Tout ce qui se construit, s'entretient et se r�pare passe par les mains habiles et les esprits ing�nieux des Technos.

Du bricolage de fortune � la haute technologie, c'est un travail vari� qui vous am�nera �galement � c�toyer de nombreuses personnes et patries.

Infrastructure, gros mat�riel mais aussi �lectronique de pointe, les Technos sont au c�ur de toute production.]])


--[[ Trigone
--]]

trigone = FactionInfo():setName("Trigone")
trigone:setGMColor(0, 255, 255)
trigone:setDescription([[Si vous �tes pr�t(e)s � aider directement les individus en leur donnant la s�curit� et l'assistance n�cessaire � leur bien-�tre, le Trigone est fait pour vous.

Il se compose de trois entit�s op�rationnelles.

L'Arm�e, L'Ordre et les Secours.]])

--[[ Polaris
--]]

polaris = FactionInfo():setName("Polaris")
polaris:setGMColor(0, 255, 0)
polaris:setDescription([[Polaris est la centralisation, � la Source, de toute recherche et d�veloppement des technologies dites "hyper" (celles laiss�es par les premiers hommes qui �taient plus avanc�s que nous en la mati�re).

Au-del� de �a, Polaris est aussi la plateforme inter-arche o� les esprits les plus aff�t�s et cr�atifs se rassemblent afin de tenter de trouver une solution aux nombreux probl�mes qui bloquent l'�volution de notre soci�t�.

Ce qui s'y fait et s'y passe demeure classifi� mais il n'est pas rare que certaines de leurs publications permettent de faire des progr�s consid�rables en certaines mati�res (c'est gr�ce � eux notament que le proc�d� RLS a pu voir le jour afin de garantir des vitesses impressionantes lorsqu'il s'agit de voyager au sein d'une m�me arche).]])

--[[ Les insurg�s
--]]

insurge = FactionInfo():setName("Insurg�s")
insurge:setGMColor(255, 0, 0)
insurge:setEnemy(transark)
insurge:setEnemy(technocorp)
insurge:setEnemy(utanscale)
insurge:setEnemy(trigone)
insurge:setEnemy(polaris)
insurge:setDescription([[Ce terme regroupe en fait bon nombre d'individus ainsi que leurs diff�rentes pratiques.

Qu'on les appelle localement pirates, pillards, charognards, malfrats ou autre, le fond reste toujours le m�me.

Ils ont d�cid� de vivre aux d�pens de la communaut� en lui prenant, souvent par la force ou par la ruse, ce dont ils ont besoin.

Hormis les dangers li�s � la faune locale, ce sont eux qui repr�sentent le plus grand danger dans tout secteur peu peupl�.

Au contraire des Intouchables qui vivent en harmonie avec la soci�t�, les insurg�s ont fait le choix de lui nuire.]])

--[[ La menace
--]]

menace = FactionInfo():setName("La Menace")
menace:setGMColor(255, 0, 0)
menace:setEnemy(transark)
menace:setEnemy(technocorp)
menace:setEnemy(utanscale)
menace:setEnemy(trigone)
menace:setEnemy(polaris)
menace:setDescription([[Groupe d'insurg�s identifi� au sein de Khayyam. Leurs m�faits sont fort m�diatis�s.]])

--[[ Neutre
--]]

neutre = FactionInfo():setName("Neutre")
neutre:setGMColor(128, 128, 128)
neutre:setDescription([[Neutre]])