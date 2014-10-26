package DateTime::Calendar::FrenchRevolutionary::Locale::fr;

my @months_short  = qw (Vnd Bru Fri Niv Plu Vnt Ger Flo Pra Mes The Fru S-C);
my @add_days_short= qw (Vertu G�nie Trav Raison R�comp R�vol);
my @months = qw(Vend�miaire Brumaire  Frimaire
                Niv�se      Pluvi�se  Vent�se
	        Germinal    Flor�al   Prairial
	        Messidor    Thermidor Fructidor);
push @months, "jour compl�mentaire";

my @decade_days = qw (Primidi Duodi Tridi Quartidi Quintidi Sextidi Septidi Octidi Nonidi D�cadi);
my @decade_days_short = qw (Pri Duo Tri Qua Qui Sex Sep Oct Non D�c);

# When initializing an array with lists within lists, it means one of two things:
# Either it is a newbie who does not know how to make multi-dimensional arrays,
# Or it is a (at least mildly) experienced Perl-coder who, for some reason, 
# wants to initialize a flat array with the concatenation of lists.
# I am a (at least mildly) experienced programmer who wants to use qw() and yet insert
# comments in some places.
my @feast = (
# Vend�miaire
	qw(
       0raisin           0safran           1ch�taigne        1colchique        0cheval
       1balsamine        1carotte          2amarante         0panais           1cuve
       1pomme_de_terre   2immortelle       0potiron          0r�s�da           2�ne
       1belle_de_nuit    1citrouille       0sarrasin         0tournesol        0pressoir
       0chanvre          1p�che            0navet            2amaryllis        0boeuf
       2aubergine        0piment           1tomate           2orge             0tonneau
	),
# Brumaire
	qw(
       1pomme            0c�leri           1poire            1betterave        2oie
       2h�liotrope       1figue            1scorson�re       2alisier          1charrue
       0salsifis         1macre            0topinambour      2endive           0dindon
       4chervis          0cresson          1dentelaire       1grenade          1herse
       5bacchante        2azerole          1garance          2orange           0faisan
       1pistache         4macjon           0coing            0cormier          0rouleau
	),
# Frimaire
	qw(
       1raiponce         0turneps          1chicor�e         1n�fle            0cochon
       1m�che            0chou-fleur       0miel             0geni�vre         1pioche
       1cire             0raifort          0c�dre            0sapin            0chevreuil
       2ajonc            0cypr�s           0lierre           1sabine           0hoyau
       2�rable-sucre     1bruy�re          0roseau           2oseille          0grillon
       0pignon           0li�ge            1truffe           2olive            1pelle
	),
# Niv�se
	qw(
       1tourbe           1houille          0bitume           0soufre           0chien
       1lave             1terre_v�g�tale   0fumier           0salp�tre         0fl�au
       0granit           2argile           2ardoise          0gr�s             0lapin
       0silex            1marne            1pierre_�_chaux   0marbre           0van
       1pierre_�_pl�tre  0sel              0fer              0cuivre           0chat
       2�tain            0plomb            0zinc             0mercure          0crible
	),
# Pluvi�se
	qw(
       5laur�ole         1mousse           0fragon           0perce-neige      0taureau
       0laurier-thym     2amadouvier       4m�z�r�on         0peuplier         1cogn�e
       2ell�bore         0brocoli          0laurier          2avelinier        1vache
       0buis             0lichen           2if               1pulmonaire       1serpette
       0thlaspi          4thymel�          0chiendent        5trainasse        0li�vre
       1gu�de            0noisetier        0cyclamen         1ch�lidoine       0tra�neau
	),
# Vent�se
	qw(
       0tussilage        0cornouiller      0violier          0tro�ne           0bouc
       2asaret           2alaterne         1violette         0marsault         1b�che
       0narcisse         2orme             1fumeterre        0v�lar            1ch�vre
       2�pinard          0doronic          0mouron           0cerfeuil         0cordeau
       1mandragore       0persil           0cochl�aria       1p�querette       0thon
       0pissenlit        1sylvie           0capillaire       0fr�ne            0plantoir
	),
# Germinal
	qw(
       1primev�re        0platane          2asperge          1tulipe           1poule
       1blette           0bouleau          1jonquille        2aulne            0couvoir
       1pervenche        0charme           1morille          0h�tre            2abeille
       1laitue           0m�l�ze           1cigu�            0radis            1ruche
       0gainier          1romaine          0marronnier       1roquette         0pigeon
       0lilas            2an�mone          1pens�e           1myrtille         0greffoir
	),
# Flor�al
	qw(
       1rose             0ch�ne            1foug�re          2aub�pine         0rossignol
       2ancolie          0muguet           0champignon       1jacinthe         0rateau
       1rhubarbe         0sainfoin         0b�ton-d'or       4cham�risier      0ver_�_soie
       1consoude         1pimprenelle      1corbeille-d'or   2arroche          0sarcloir
       0statice          1fritillaire      1bourrache        1val�riane        1carpe
       0fusain           1civette          1buglosse         0s�nev�           1houlette
	),
# Prairial
	qw(
       1luzerne          6h�m�rocalle      0tr�fle           2ang�lique        0canard
       1m�lisse          0fromental        0martagon         0serpolet         1faux
       1fraise           1b�toine          0pois             2acacia           1caille
       2oeillet          0sureau           0pavot            0tilleul          1fourche
       0barbeau          1camomille        0ch�vrefeuille    0caille-lait      1tanche
       0jasmin           1verveine         0thym             1pivoine          0chariot
	),
# Messidor
	qw(
       0seigle           2avoine           2oignon           1v�ronique        0mulet
       0romarin          0concombre        2�chalotte        2absinthe         1faucille
       0coriandre        2artichaut        1girofl�e         1lavande          0chamois
       0tabac            1groseille        1gesse            1cerise           0parc
       1menthe           0cumin            0haricot          2orcan�te         1pintade
       1sauge            2ail              1vesce            0bl�              5chal�mie
	),
# Thermidor
	qw(
       2�pautre          0bouillon-blanc   0melon            2ivraie           0b�lier
       1pr�le            2armoise          0carthame         1m�re             2arrosoir
       4panis            4salicor          2abricot          0basilic          1brebis
       1guimauve         0lin              2amande           1gentiane         2�cluse
       1carline          0c�prier          1lentille         2aun�e            1loutre
       1myrte            0colza            0lupin            0coton            0moulin
	),
# Fructidor
	qw(
       1prune            0millet           0lycoperdon       2escourgeon       0saumon
       1tub�reuse        4sucrion          2apocyn           1r�glisse         2�chelle
       1past�que         0fenouil          2�pine-vinette    1noix             1truite
       0citron           1card�re          0nerprun          0tagette          1hotte
       2�glantier        1noisette         0houblon          0sorgho           2�crevisse
       5bagarade         1verge-d'or       0ma�s             0marron           0panier
	),
# Jours compl�mentaires
	qw(
       1vertu            0g�nie            0travail          2opinion          3r�compenses
       1r�volution
	 ));
my @prefix = ('jour du ', 'jour de la ', "jour de l'", 'jour des ');

my %event = ();

sub new {
  return bless {},  $_[0];
}

sub month_name {
    my ($self, $date) = @_;
    return $months[$date->month_0]
}

sub month_abbreviation {
    my ($self, $date) = @_;
    return $months_short[$date->month_0]
}

sub day_name {
    my ($self, $date) = @_;
    return $decade_days[$date->day_of_decade_0];
}

sub day_abbreviation {
    my ($self, $date) = @_;
    return $decade_days_short[$date->day_of_decade_0];
}

sub feast_short {
  my ($self, $date) = @_;
  my $lb = $feast[$date->day_of_year_0];
  $lb =~ s/_/ /g;
  return substr($lb, 1);
}

sub feast_long {
  my ($self, $date) = @_;
  my $lb = $feast[$date->day_of_year_0];
  $lb =~ s/_/ /g;
  $lb =~ s/^(\d)/$prefix[$1 % 4]/;
  return $lb;
}

sub feast_caps {
  my ($self, $date) = @_;
  my $lb = $feast[$date->day_of_year_0];
  $lb =~ s/_/ /g;
  $lb =~ s/^(\d)(.)/\u$prefix[$1 % 4]\u$2/;
  return $lb;
}

sub on_date {
  my ($self, $date) = @_;
  _load_events() unless %event;
  $event{$date->strftime('%m%d%n')} || "";
}

sub _load_events {
  %event = ('dummy', split /(\d{4}\n)/, <<'EVENTS');
0101
1 Vend�miaire I entr�e des troupes fran�aises en Savoie
1 Vend�miaire III les postes du bois d'Aix-la-Chapelle et de Reckem sont enlev�s 
par l'Arm�e du Nord (Jourdan)
0102
2 Vend�miaire I conqu�te de Chamb�ry
2 Vend�miaire III prise de la redoute et du camp de Costouge par l'Arm�e des
Pyr�n�es orientales (Dugommier).
2 Vend�miaire V l'Arm�e d'Italie (Kilmaine) met en d�route l'ennemi � Governolo.
0103
3 Vend�miaire IV affaire de Garesio (Miolis)
0104
4 Vend�miaire II l'Arm�e des Alpes (Verdelin) enl�ve de vive force les retranchements
de Chatillon ; les Pi�montais sont mis en d�route et repassent la rivi�re de Giffe.
0105
5 Vend�miaire III d�faite des Espagnols � Olia et Monteilla par l'Arm�e des Pyr�n�es
orientales (Charlet).
0106
6 Vend�miaire III capitulation de Crevecoeur devant l'Arm�e du Nord (Delmas)
6 Vend�miaire III reprise de Kayserlautern, d'Alsborn et autres postes environnants
par l'Arm�e du Rhin (Michaud)
6 Vend�miaire V l'ennemi attaque l'Arm�e de Sambre et Meuse (Hardy) sur les
points de Wurstatt, Nider-Ulm, Ober et Nider-Iogelheim ; l'attaque est repouss�e.
0107
7 Vend�miaire I prise de la ville de Nice et de la forteresse de Montalban 
par les troupes d'Anselme.
7 Vend�miaire II l'Arm�e des Alpes (Verdelin) d�fait l'ennemi dans les gorges
de Sallanges et prend la redoute de Saint-Martin.
0108
8 Vend�miaire V 150 hommes de l'Arm�e d'Italie font une sortie de Mantoue pour
se procurer du fourrage. Ils doivent se rendre aux habitants de Reggio.
0109
9 Vend�miaire I les Fran�ais de Custines se rendent ma�tres de la ville de Spire
apr�s avoir enfonc� les portes � coups de canons et subi un feu de mousqueterie
dans les rues de la ville.
9 Vend�miaire II l'Arm�e des Alpes (Chamberlhac) enl�ve de vive-force les
retranchements de Mont-Cormet tenus par les Pi�montais.
0111
11 Vend�miaire II les troupes de Prisy de l'Arm�e des Alpes enl�vent le poste
de Valmeyer � la bayonette, celles de Saint-Andr� et de Chamberlhac enl�vent
le poste de Beaufort, celles du g�n�ral-en-chef Kellerman prennent Moutiers et 
le bourg Saint-Maurice et celles de Ledoyen enl�vent de vive force le poste
du Col de la Madeleine.
11 Vend�miaire III � la bataille d'Aldenhoven, l'Arm�e de Sambre-et-Meuse
(Jourdan) provoque la d�route des troupes coalis�es.
11 Vend�miaire V l'Arm�e du Rhin et Moselle (g�n�ral-en-chef Moreau, 
g�n�raux de division Desaix et Saint-Cyr) attaque sur toute la ligne et met
l'ennemi en d�route.
0112
12 Vend�miaire II les Espagnols sont forc�s dans leurs camps du Boulon 
et Argel�s par l'Arm�e des Pyr�n�es orientales (Delatre).
12 Vend�miaire III le pays de Juliers se rend � l'Arm�e de Sambre-et-Meuse (Jourdan).
0113
13 Vend�miaire I les Autrichiens sont forc�s d'�vacuer la ville de Worms
et les troupes de Custines y font leur entr�e.
13 Vend�miaire II Arm�e des Pyr�n�es orientales : les troupes de Dagobert prennent
Campredon tandis que la garnison de Colioure (Delatre) combat la cavalerie espagnole
et la met en d�route.
13 Vend�miaire II l'Arm�e des Pyr�n�es occidentales attaque les postes d'Arau
et de la vall�e d'Aure sur trois colonnes (Lasalle, Mascaron et Dat) et les enl�ve.
13 Vend�miaire IV Bonaparte r�prime une manifestation royaliste � l'�glise Saint-Roch
0115
15 Vend�miaire III Cologne se rend � l'Arm�e de Sambre-et-Meuse (Jourdan).
0116
16 Vend�miaire V l'ennemi, bloqu� � Mantoue par l'Arm�e d'Italie (Sahuguet) tente
une sortie de 4 600 hommes, sortie qui se solde par un �chec.
0117
17 Vend�miaire I � l'approche de l'Arm�e fran�aise, les Autrichiens l�vent
pr�cipitamment le si�ge de Lille.
17 Vend�miaire III combat et prise de Frankenthal par l'Arm�e du Rhin (Desaix)
0118
18 Vend�miaire II bombardement de Lyon qui ouvre ses portes aux troupes de 
Dubois-de-Cranc�.
18 Vend�miaire III prise de Shelaudenbach et de Vollfstein par l'Arm�e du Rhin (Michaud)
et jonction avec l'Arm�e de la Moselle � Lautreck.
0119
19 Vend�miaire III devant Maestricht, l'Arm�e de Sambre-et-Meuse (Duhesme) reprend
le ch�teau de Mont-Saint-Pierre.
0120
20 Vend�miaire III l'Arm�e de la Moselle (Moreau) marche sur Birkenfeldt, Oberstein,
Kirn et Meisenheim.
0121
21 Vend�miaire III entr�e de l'Arm�e du Nord (Delmas) dans Bois-le-Duc.
0122
22 Vend�miaire I Kellerman force les Prussiens � �vacuer la ville de Verdun.
Il y entre et poursuit sa marche contre eux.
0123
23 Vend�miaire III l'Arm�e du Rhin (Michaud) prend Otterberg, Rockenhausen, 
Landsberg, Alzein et Oberhausen.
0124
24 Vend�miaire II l'Arm�e de la Moselle (Delaunay) combat et provoque la retraite
pr�cipit�e des coalis�s qui s'�taient port�s sur Bitche et Rorbach.
24 Vend�miaire III combat et prise de Gellheim et de Grunstad par 
l'Arm�e du Rhin (Michaud) ; les Fran�ais reprennent aussi Frankenthal.
0126
26 Vend�miaire I les Autrichiens attaquent plusieurs fois inutilement Hasnon
(Muller commandant) et sont repouss�s avec perte.
26 Vend�miaire II la bataille de Wattignies pr�s de Maubeuge est remport�e
par l'Arm�e du Nord (Jourdan) sur les Autrichiens et le blocus de Maubeuge est lev�.
26 Vend�miaire III l'Arm�e des Pyr�n�es occidentales (Moncey) prend la belle
m�ture d'Iraty et les superbes fonderies d'Egay et d'Orbaycette.
26 Vend�miaire III Arm�e de la Moselle : les troupes du g�n�ral-en-chef 
Moreau prennent Creutznach et celles de Custines prennent Worms.
26 Vend�miaire VI Arm�e d'Italie : trait� de paix d�finitif � Campo-Formio
pr�s d'Udine entre le g�n�ral Bonaparte et les pl�nipotentiaires de l'Empereur,
roi de Hongrie et de Boh�me.
26 Vend�miaire VI congr�s � Rastadt pour la conclusion de la paix entre
la R�publique fran�aise et l'Empire germanique.
0127
27 Vend�miaire II 600 r�publicains de l'Arm�e d'Italie (Dugommier) remportent
l'avantage � Gillette sur 4 000 Autrichiens, Croates et Pi�montais et les
repoussent.
27 Vend�miaire III l'Arm�e des Pyr�n�es occidentales (Delabare) d�fait 7 000 
Espagnols pr�s de Buruet et d'Almandos.
27 Vend�miaire III l'Arm�e du Rhin (Michaud) met en d�route l'ennemi pr�s
de Kircheim et de Worms et prend ces deux villes.
0128
28 Vend�miaire II l'Arm�e d'Italie (Dugommier) remporte
une victoire compl�te � Gilette sur les Pi�montais.
28 Vend�miaire III l'Arm�e du Nord (Souham) d�fait l'ennemi pr�s de Nim�gue
et d�truit la l�gion de Rohan.
28 Vend�miaire V l'Arm�e du Rhin et Moselle (g�n�ral-en-chef Moreau et
g�n�ral de division Beaupuis) est attaqu�e � Retzengen et � Simonswald, les 
efforts des ennemis sont vains.
0129
29 Vend�miaire I l'Arm�e fran�aise (g�n�ral-en-chef Custines) force les
Autrichiens � �vacuer Mayence.
29 Vend�miaire III l'Arm�e de la Moselle (Moreau) entre dans Bingen
apr�s avoir chass� les Prussiens des positions qu'ils tenaient en avant
de la ville.
29 Vend�miaire V l'Arm�e d'Italie (Casalta), d�barqu�e en Corse, se porte
sur Bastia et chasse les Anglais qui s'�taient retir�s dans le fort.
Prise �galement des villes de Saint-Florent et de Bonifacio.
0130
30 Vend�miaire II l'Arm�e des Pyr�n�es occidentales (Poncet) met
en d�route trois colonnes espagnoles apr�s une fusillade de cinq heures.
30 Vend�miaire V Arm�e de Sambre et Meuse (g�n�ral-en-chef Beurnonville,
g�n�raux de division Championnet et Grenier) : l'ennemi passe le Rhin sur
six points depuis Bacharach jusqu'� Andernach et attaque la t�te de pont
de Neuwied et est forc� � la retraite.
0201
1 Brumaire I Reprise de la ville de Longwi, les Prussiens �vacuent le
territoire fran�ais.
1 Brumaire II Arm�e des Pyr�n�es orientales. Avantage sur les
espagnols dans la vall�e de Baigory.
1 Brumaire II Arm�e du Nord. Enl�vement des postes de Warneton,
Comines, Werwick, Ronek, Alluin, Menin, Furnes et Poperingues.
1 Brumaire II Arm�e du Rhin, prise d'Alzey et d'Oppenheim.
0202
2 Brumaire II Arm�e d'Italie. D�faite � Utel de cinq mille ennemis par
neuf cents r�publicains, apr�s onze heures de combat.
2 Brumaire II Arm�e du Rhin. Attaque du poste de Breitenstein par les
Autrichiens ; l'ennemi repouss� avec une perte consid�rable.
2 Brumaire II Arm�e de Sambre et Meuse. Prise de Coblentz ; fuite de
l'ennemi au-del� du Rhin.
2 Brumaire II Arm�e des Pyr�n�es orientales. Combat � Bhaga, dans
lequel les Espagnols sont repouss�s avec perte consid�rable.
2 Brumaire II Arm�e des Pyr�n�es orientales. Enl�vement de vive force
des postes de Dori et Tozas et de sept retranchemens de Casteillan.
0203
3 Brumaire V Trait� de paix conclu entre la R�publique fran�aise et le
roi de Naples et des deux Siciles.
0204
4 Brumaire VI Arm�e d'Italie. Trait� d'alliance entre la R�publique
fran�aise et le roi de Sardaigne.
0205
5 Brumaire III Arm�e du Nord. Prise de Hultz, Axel et Sas-de-Gand.
5 Brumaire V Arm�e de Sambre et Meuse. Attaque et prise de Saint
Wendel, Kayserslautern, Kirchenpoland, Bingen et de la montagne de
Saint-Roch.
5 Brumaire V Arm�e du Rhin et Moselle Passage du Rhin par les
Fran�ais, prise du fort de Khel.
0207
7 Brumaire V Arm�e d'Italie. Sortie ennemie de Mantoue repouss�e.
0208
8 Brumaire III Arm�e du Nord. Prise de Venlo.
0209
9 Brumaire II Arm�e des Pyr�n�es orientales. Reprise � la ba�onnette,
d'une batterie ennemie, en avant de Ville longue.
0211
11 Brumaire III Arm�e des Pyr�n�es orientales. D�route des Espagnols
sur les revers de la montagne Noire.
0212
12 Brumaire I Les Autrichiens sont forc�s d'�vacuer la petite ville de
Lanoy, le seul poste ferm� qui leur rest�t sur le territoire fran�ais.
12 Brumaire III Arm�e de la Moselle. Entr�e des Fran�ais dans
Rheinfels, �vacu� par douze cents ennemis.
12 Brumaire V Arm�e d'Italie. Prise du village de Saint-Michel ; les
ponts sur l'Adige br�l�s par les Fran�ais. L'ennemi se porte sur le
Lavis, o� il est battu et repouss� jusque dans le village de
Segonzano.
0214
14 Brumaire V Arm�e de Sambre et Meuse. Prise de Maestricht apr�s
onze jours de tranch�e ouverte.
0215
15 Brumaire V Arm�e d'Italie. L'ennemi ayant pass� la Brenta est
oblig� de la repasser apr�s un combat meurtrier.
0216
16 Brumaire I. Bataille de Gemmapes. Par suite de cette victoire
m�morable les Fran�ais entrent dans la ville de Mons.
16 Brumaire III Arm�e du Nord. Prise du fort de Schenk.
0217
17 Brumaire III Arm�e du Nord. La sortie de la garnison de
Berg-op-zomm est repouss�e � la ba�onnette par les Fran�ais.
0218
18 Brumaire I. Prise de la ville de Tournay par les Fran�ais.
18 Brumaire III Arm�e du Nord. Entr�e triomphante des Fran�ais dans
18 Brumaire VIII Coup d'�tat de Bonaparte : fin du Directoire, d�but du Consulat
Nim�gue.
0219
19 Brumaire IV Arm�e du Nord. Prise de Burick.
0220
20 Brumaire IV Arm�e de Sambre et Meuse. Combat pr�s de Creutzenach,
dans lequel l'ennemi a �t� forc� de repasser la Nahe.
0221
21 Brumaire V Arm�e d'Italie. L'arm�e fran�aise, sur l'Adige,
rencontre l'ennemi entre Saint-Michel et Saint-Martin, le culbute et
le poursuit l'espace de trois milles.
0222
22 Brumaire I Arm�e du Nord. La ville de Gand ouvre ses portes �
l'arm�e fran�aise.
22 Brumaire I. Prise de Charleroy par les Fran�ais.
22 Brumaire III Arm�e du Rhin. Prise de Monbach et de tous les postes
de la for�t en avant de ce village.
22 Brumaire III Arm�e du Rhin. Prise de Weissenau.
0223
23 Brumaire I. Bataille d'Anderlecht pr�s Bruxelles. D�faite
compl�te de l'ennemi, l'arm�e fran�aise fait son entr�e triomphante
dans Bruxelles.
0224
24 Brumaire I. Prise de la ville de Francfort.
24 Brumaire II Arm�e de l'Ouest. D�faite des rebelles de la Vend�e
sous les murs de Granville.
0225
25 Brumaire V Arm�e d'Italie. Bataille d'Arcole : cette bataille
m�morable a dur� trois jours de suite ; elle a �t� d�cid�e le 27 par
la prise du village d'Arcole.
0226
26 Brumaire I. Les Fran�ais se rendent ma�tres de la ville et du port
d'Ostende, �vacu� par les Autrichiens.
26 Brumaire I. Prise de Sainte-Remi.
26 Brumaire I. Capitulation de la ville de Malines.
26 Brumaire II Arm�e du Rhin L'arm�e surprend et enl�ve pr�s de
Strasbourg trois postes ennemis vaillamment d�fendus.
26 Brumaire II Le si�ge de la ville de Granville est lev�.
26 Brumaire IV Combat du champ di Pietri.
0227
27 Brumaire II Arm�e de la Moselle D�faite de quatre mille Autrichiens
devant Bitche. D�route compl�te des Autrichiens pr�s L�bach. Prise
de Bising et de Blise-Castel.
27 Brumaire III Arm�e des Pyr�n�es orientales. Dugommier g�n�ral en
chef, tu� d'un coup d'obus dans l'affaire de St. S�bastien de la
Mouga.
27 Brumaire III Arm�e des Pyr�n�es orientales. Bataille gagn�e sur
les Espagnols � Saint-S�bastien.
0228
28 Brumaire I Prise des villes d'Ypres, Furnes et Bruges. Entr�e des
Fran�ais dans la ville d'Anvers.
28 Brumaire II Arm�e du Rhin. Enl�vement de vive force du poste de
Neuviller, et de quatre autres environnants. Prise d'une forte
redoute et de sept pi�ces de canons pr�s de Wantzenau.
28 Brumaire V
Trait� de paix conclu entre la R�publique fran�aise et le duc de
Parme.
0229
29 Brumaire II L'Arm�e du Rhin enl�ve deux redoutes formidables pr�s
de Bouxweiller.
0230
30 Brumaire II Arm�e des Pyr�n�es orientales Bataille gagn�e � Escola,
Liers, Vilartoly, sur cinquante mille Espagnols.
30 Brumaire II Arm�e de la Moselle. D�faite de douze cents hommes
d'infanterie, et de trois cents de cavalerie aupr�s de Blascheidt, et
de Lorentsweiller.
0301
1 Frimaire I Arm�e des Ardennes. Prise de la ville de Namur par les
Fran�ais.
1 Frimaire III Arm�e de la Moselle. D�faite de plus de quatre cents
ennemis dans la for�t de Grunnevald, pr�s Luxembourg.
1 Frimaire V Arm�e d'Italie. L'ennemi est attaqu� et repouss� de
position en position ; de Castel-Nobo � Rivoli, la Corona, et le long
de l'Adige jusqu'� Dolce.
0302
2 Frimaire I Arm�e du Rhin. Cinq mille Fran�ais mettent en d�route
toute l'arm�e ennemie devant Tirlemont.
2 Frimaire II Arm�e du Rhin. Combats successifs et enl�vement des
postes de Bouxweiller, Brumpt et Haguenau par les Fran�ais ; d�route
de l'ennemi.
2 Frimaire IV Arm�e d'Italie. Bataille de Loano, d�route des
Austro-Sardes ; prise de la Pietra, Loano, Finale, Vado et Savonne.
2 Frimaire V Arm�e du Rhin et Moselle. Sortie vigoureuse par la
garnison de Kehl ; la ligne ennemie est forc�e sans tirer un coup de
fusil ; une partie de son artillerie enclou�e.
0303
3 Frimaire IV Arm�e d'Italie. Combat d'Intrapa et de Garesio.
3 Frimaire V. Sortie faite par la garnison de Mantoue, qui est
brusquement repouss�e et forc�e de rentrer dans la place.
0304
4 Frimaire II Arm�e d'Italie. D�faite de huit cents Pi�montais par
cinq cents Fran�ais, � Castel-Genest et � Brec, prise de Figaretto.
4 Frimaire III Arm�e des Pyr�n�es occidentales. Victoire remport�e �
Ost�s, apr�s un combat de deux jours.
0306
6 Frimaire IV Arm�e d'Italie. Combat de Spinardo et autres lieux.
0307
7 Frimaire I Arm�e du Rhin. Prise de la ville de Li�ge, pr�c�d�e
d'une victoire compl�te remport�s sur les Autrichiens, apr�s un combat
de dix heures.
7 Frimaire III Arm�e des Pyr�n�es orientales. Prise de la forteresse
de Figui�res.
0308
8 Frimaire III Arm�e des Pyr�n�es orientales. Bataille gagn�e sur les
Espagnols � Begara, Ascuatia et Aspetia.
0310
10 Frimaire I Arm�e du Nord. Capitulation de la citadelle d'Anvers
10 Frimaire II Arm�e du Nord. Attaque de tous les postes ennemis sur
la Lys ; quinze ennemis tu�s, cent quarante faits prisonniers.
10 Frimaire IV Arm�e de Sambre et Meuse. Attaque et prise de
Creutzenach.
0311
11 Frimaire I Arm�e des Ardennes. Capitulation de la citadelle de
Namur.
11 Frimaire II Arm�e du Rhin. Enl�vement de la redoute du pont de
Landgraben et des retranchemens de Gambsheim.
11 Frimaire III Arm�e du Rhin et Moselle. Enl�vement de la redoute,
dite de Merlin, devant Mayence.
11 Frimaire V. L'ennemi, sur trois colonnes, attaque la t�te du pont
d'Huningue et s'empare de la demi-lune ; il en est d�log� apr�s un vif
combat.
11 Frimaire XIII Napol�on Premier est couronn� Empereur des Fran�ais
11 Frimaire XIV Bataille d'Austerlitz : l'arm�e fran�aise �crase l'arm�e austro-russe
0312
12 Frimaire II Arm�e des Ardennes. Vigoureuse sortie de la garnison
de Givet, qui tue beaucoup d'ennemis et ne perd que cinq � six hommes,
entre Falmagne et Falmignoule.
12 Frimaire II Arm�e du Rhin. Combat pr�s du bois de Gambshein.
0314
14 Frimaire II Arm�e du Rhin. L'ennemi, chass� du village
d'Oppendorff, est poursuivi jusqu'� Druzenheim.
14 Frimaire III Arm�e de la Moselle. Les r�publicains enl�vent de
vive force les redoutes de Salbach.
0319
19 Frimaire II Arm�e du Rhin. Prise des hauteurs de Dawendorff, apr�s
une action tr�s vive.
0321
21 Frimaire I Arm�e du Nord. Prise des villes de Wezem et de Wert ;
cette conqu�te est suivie de la prise de la ville de Ruremonde,
capitale de la Gueldre autrichienne, dans laquelle les Fran�ais font
leur entr�e aux acclamation de tous les habitants.
0322
22 Frimaire II Arm�e de l'Ouest. Victoire remport�e sur les rebelles
de la Vend�e, pr�s et dans la ville du Mans.
0323
23 Frimaire II Arm�e des Pyr�n�es occidentales. D�route des Espagnols
pr�s de Saint-Jean-de-Luz ; ils sont forc�s de repasser la Bidassoa.
0324
24 Frimaire I. Apr�s plusieurs combats, les troupes fran�aises se
rendent ma�tres des villes de Mertzicq, de Fredembourg et de
Saarbruck.
0325
25 Frimaire II Arm�e de la Moselle. Enl�vement de vive force, par trois
diff�rentes divisions de l'arm�e, des hauteurs de Marsal du Dahubruck
et de Lambach.
25 Frimaire II Arm�e d'Italie. Les R�publicains enl�vent de vive
force les retranchements et redoutes qui d�fendaient Toulon.
0326
26 Frimaire I. Prise de Consarbruck.
26 Frimaire II Arm�e d'Italie. Prise de Toulon, fuite pr�cipit�e des
Anglais et des Espagnols.
26 Frimaire IV Arm�e de Sambre et Meuse. Combat sur toute la ligne
dans le Hundstruck ; l'ennemi est battu sur tous les points.
0327
27 Frimaire II Arm�e des Ardennes. Combat pr�s de Philippeville,
dans le bois de Jama�que, entre une partie de la garnison de Givet et
les Autrichiens ; l'ennemi est repouss� avec perte.
0329
29 Frimaire II Arm�e des Pyr�n�es orientales. Enl�vement � la
ba�onnette par deux mille cinq cents Fran�ais, des hauteurs pr�s
Villelongue.
0402
2 Niv�se II Arm�e du Rhin et Moselle. D�faite de l'ennemi � Werd.
0403
3 Niv�se II Arm�e du Rhin et Moselle.  Enl�vement de tous les
retranchements de Bischweiller, Druzenheim et Haguenau.
0405
5 Niv�se II Arm�e du Rhin et Moselle.  D�route de l'ennemi �
Obers�ebach.  Prise du ch�teau de Geisberg.
0406
Arm�e du Rhin et Moselle.  Evacuation forc�e des lignes de la Lauter
et de Weissembourg, et lev�e du blocus de Landau par l'ennemi.
0407
7 Niv�se II Arm�e du Rhin.  Les Fran�ais enl�vent les postes de
Germersheim et Spire.
0408
8 Niv�se III Arm�e du Nord.  Passage du Vaal, prise de Bommel, du fort
Saint-Andr� et de quatre postes environnants, reddition de Grave.
0413
13 Niv�se I Arm�e du Nord.  Un d�tachement de l'avant-garde fran�aise
p�n�tre dans le pays de Luxembourg, et s'empare des caisses de
l'Empereur, dans lesquelles se trouvent deux cent mille francs
esp�ces.
0414
14 Niv�se II Arm�e de l'Ouest.  Prise sur les rebelles de la Vend�e de
l'�le de Noirmoutiers.
0417
17 Niv�se II Arm�e du Rhin et Moselle.  Prise de Worms.
17 Niv�se III Arm�e des Pyr�n�es occidentales.  Prise du fort de la
Trinit�.
0420
20 Niv�se VI Arm�e d'Italie.  Deux colonnes de troupes fran�aises
marchent sur la ville de Rome pour venger la mort du g�n�ral Duphot,
et l'insulte faite � l'ambassadeur de la R�publique fran�aise ; � leur
approche, l'insurrection �clate dans l'Ombrie ; ses habitants secouent
le joug du gouvernement papal et se d�clarent libres et ind�pendants.
0422
22 Niv�se III Arm�e du Nord.  Prise de Thiel et de six forts.
0423
23 Niv�se II Arm�e des Pyr�n�es occidentales.  Enl�vement de vive
force du poste de la Montagne de Louis XIV par quatre cents
r�publicains.
23 Niv�se V Arm�e d'Italie.  Combat de Saint-Michel devant V�ronne.
23 Niv�se V Arm�e d'Italie.  L'ennemi attaque la t�te de la ligne de
Montebaldo et est repouss�.
0424
24 Niv�se III Arm�e du Nord.  Prise d'Heusdin.
0425
25 Niv�se V Arm�e d'Italie.  Bataille de Rivoli, l'ennemi en d�route
compl�te.
0426
26 Niv�se V Arm�e d'Italie.  Dix mille ennemis forcent le passage
d'Anghiari.
26 Niv�se V Arm�e d'Italie.  Le g�n�ral Provera � la t�te de six mille
hommes, attaque le faubourg Saint-Georges de Mantoue pendant toute la
journ�e, mais inutilement.
0427
27 Niv�se II Arm�e du Rhin et Moselle.  Les ennemis font une sortie du
fort Vauban et sont repouss�s.
27 Niv�se V Bataille de la Favorite (faubourg de Mantoue), Wurmser
�choue dans sa sortie de Mantoue et Provera est oblig� de capituler.
0428
28 Niv�se III Arm�e du Nord.  Prise d'Utrecht, d'Amersford et des
lignes du Greb, passage de la Lech.
0429
29 Niv�se II Arm�e du Rhin.  Evacuation totale du d�partement du
Bas-Rhin par les coalis�s ; reprise du fort Vauban.
29 Niv�se III Arm�e du Nord.  Prise de Gertuydemberg.
0502
2 Pluvi�se II Arm�e des Pyr�n�es occidentales. Deux cents Fran�ais
enl�vent � la ba�onette la redoute d'Harriette pr�s Ispeguy.
2 Pluvi�se III Arm�e du Nord. Les villes de Gorcum, Dordrecht et
d'Amsterdam se rendent aux Fran�ais.
0504
4 Pluvi�se II Arm�e du Var. A l'approche des troupes Fran�aises, les
Anglais abandonnent les �les d'Hy�res.
0507
7 Pluvi�se V Arm�e d'Italie. L'ennemi, chass� au-del� de la Brenta,
est atteint � Carpenedelo, et est forc� � la retraite.
0508
8 Pluvi�se V Arm�e d'Italie. L'ennemi poursuivi dans les gorges du
Tyrol est atteint � Avio.
0509
9 Pluvi�se V Le g�n�ral Murat d�barque � Torgole et chasse les ennemis ; 
le g�n�ral Vial les tourne et leur fait quatre cent cinquante
prisonniers. Entr�e des Fran�ais dans Roveredo et Trente.
9 Pluvi�se VI Arm�e d'Italie. Prise de la ville d'Anc�ne, par l'arm�e
fran�aise ; elle continue sa marche sur Rome par Maurata.
0510
10 Pluvi�se V Arm�e du Rhin et Moselle. A trois heures du matin, les
R�publicains sur deux colonnes, font une sortie de la t�te de pont
d'Huningue et chassent l'ennemi des deux premi�res parall�les.
0513
13 Pluvi�se I La r�publique fran�aise d�clare la guerre au roi
d'Angleterre et au stathouder de Hollande.
13 Pluvi�se VI Arm�e d'Italie. Une des colonnes de l'arm�e d'Italie,
premi�re division, traverse le territoire G�n�vois et �tablit son
quartier g�n�ral � Ferney-Voltaire.
0514
14 Pluvi�se V Arm�e d'Italie. Les Fran�ais attaquent les d�bris de
l'arm�e autrichienne derri�re le Lavis et les repoussent jusqu'�
Saint-Michel.
Entr�e des Fran�ais � Janola, trois � quatre mille hommes du Pape,
retranch�s derri�re la rivi�re de Senio sont mis en d�route. Entr�e
des Fran�ais � Faenza et Forli.
Capitulation de Mantoue, la garnison prisonni�re de guerre.
0515
15 Pluvi�se III Arm�e des Pyr�n�es occidentales. Prise de Roses,
apr�s 27 jours de si�ge.
Arm�e du Nord. Conqu�te de la Hollande : toutes les places fortes et
les vaisseaux de guerre restent au pouvoir des Fran�ais. Entr�e des
troupes fran�aises � Midelbourg et � Flesingue.
0517
17 Pluvi�se III Arm�e des Pyr�n�es occidentales. D�route complette
des Espagnols � Sare et Berra.
D�route de quinze mille Espagnols battus � Urrugne et � Chauvin-Dragon
par cinq mille r�publicains ; douze cents ennemis tu�s.
0518
18 Pluvi�se V Arm�e d'Italie. Les avant-postes de l'ennemi repouss�s
sur la droite de l'Adige ; prise de Derunbano.
0521
21 Pluvi�se V Arm�e d'Italie. Les troupes du pape, au nombre de douze
cents hommes, sur les hauteurs en avant d'Anc�ne, sont envelopp�es et
faites prisonni�res, sans tirer un coup de fusil.
Prise d'Anc�ne.
21 Pluvi�se VI Arm�e d'Italie. Les troupes fran�aises continuent leur
marche sur Rome.
0522
22 Pluvi�se V Arm�e d'Italie. Prise de Lorette.
0527
27 Pluvi�se VI Arm�e d'Italie. Entr�e des Fran�ais dans Rome ; le
g�n�ral Berthier se rend au capitole, o�, au nom de la R�publique
fran�aise, il proclame la R�publique romaine.
0601
1 Vent�se II Arm�e du Rhin.  Les Fran�ais enl�vent de vive force le
poste d'Ogersheim.
1 Vent�se V Arm�e d'Italie.  Trait� de paix avec le pape, conclu �
Tolentino.
0604
4 Vent�se V Arm�e d'Italie.  Reprise du poste de Treviso.
0605
5 Vent�se V Arm�e d'Italie.  Affaire de Foi : l'ennemi est chass� de
ses retranchements ; les Fran�ais tombent ensuite sur un corps de
chasseurs Tyroliens et les d�font.
Les Fran�ais, attaqu�s � Bidole, battent compl�tement l'ennemi.
Kellerman passe la Piave � San-Mamma, et met en fuite un poste de
hussards ennemis qui en d�fendaient le passage.
0607
7 Vent�se X Naissance de Victor Hugo
0611
11 Vent�se III Arm�e des Pyr�n�es orientales.  Prise de Bezalu.
0612
12 Vent�se V Arm�e d'Italie.  Les Fran�ais attaquent l'ennemi � Monte
di-Savaro et le d�font.
0615
15 Vent�se VI Arm�e en Helv�tie.  Capitulation de la ville de Berne.
0616
16 Vent�se II Arm�e des Ardennes.  Combat pr�s Soumoy et Cerffontaine ; 
d�faite de l'ennemi.
0617
17 Vent�se I. D�claration de guerre au roi d'Espagne.
0618
18 Vent�se II Arm�e de la Moselle.  D�faite de trois bataillons
autrichiens sur les hauteurs des forges de Joegerthal.
0620
20 Vent�se V.  Arm�e d'Italie.  Une division de l'arm�e fran�aise se
rend � Feltre ; � son approche l'ennemi �vacue la ligne de Cordevoie
et se porte sur Bellurn.
0622
22 Vent�se V.  Arm�e d'Italie.  La 21e l�g�re passe la Piave vis-�-vis
le village de Vidor, culbute l'ennemi qui vouloit s'opposer � son
passage, et le force d'�vacuer son camp de la Gampana.
0623
23 Vent�se V.  Arm�e d'Italie.  Combat de Sacile.
Affaire de Bellurn, dans laquelle l'arri�re-garde ennemie est
envelopp�e et faite prisonni�re.
23 Vent�se VI Apr�s cinq combats successifs et meurtriers, les Suisses
�vacuent Morat.
0626
26 Vent�se V Arm�e d'Italie.  Passage du Tagliamento, malgr� des
forces sup�rieures et une r�sistance opini�tre.
Prise du village de Gradisca.
0627
27 Vent�se VI Trait� d'alliance et de commerce entre les R�publiques
fran�aise et cisalpine.
0628
28 Vent�se V Arm�e d'Italie.  Prise de Palma Nova, que l'ennemi est
forc� d'�vacuer.
0629
29 Vent�se V Arm�e d'Italie.  Prise de la ville de Gradisca.  Passage
du pont de Casasola.
0630
30 Vent�se V Arm�e d'Italie.  Combat de Lavis. Les troupes ennemies,
apr�s un combat opini�tre, sont envelopp�es par les Fran�ais.
0701
1 Germinal V Arm�e d'Italie. Entr�e des Fran�ais dans Geritz.
Affaire de Caminia, entre l'avant-garde fran�aise et l'arri�re-garde
ennemie.
0702
2 Germinal IV Arm�e d'Italie. Combat de Tramin et Combat de
Caporetto.
0703
3 Germinal V Arm�e d'Italie. Combat de Clausen. L'ennemi battu �
Botzen, s'enferme dans Clausen, o� il est attaqu� par les Fran�ais
puis est oblig� de c�der.
0704
4 Germinal V Arm�e des Pyr�n�es orientales. Entr�e des Fran�ais �
Trieste. Les Fran�ais s'emparent des c�l�bres mines d'Ydria.
0705
5 Germinal II Arm�e de la Moselle. Avantage remport� sur les
Prussiens, qui attaquent les avant-postes d'Apach au nord de Sierck.
5 Germinal V Arm�e d'Italie. Combat de Tarvis ; apr�s une opini�tre
r�sistance, l'ennemi est mis en d�route.
0706
6 Germinal V Arm�e d'Italie. Affaire de la Chinse ; prise de ce poste
important.
0708
8 Germinal V Arm�e d'Italie. Des bataillons ennemis, fra�chement
arriv�s du Rhin, entreprennent de d�fendre la gorge d'Innsbruck ; ils
sont culbut�s par la 85e demi-brigade.
0709
9 Germinal V Arm�e d'Italie. Les Fran�ais entrent dans la ville de
Clagenfurth, capitale de la haute et basse Carinthie ; le prince
Charles avec les d�bris de son arm�e, extr�mement d�courag�e, fuit
devant eux.
0712
12 Germinal V Arm�e d'Italie. Combat des gorges de Neumarck ;
l'arri�re garde ennemie est culbut�e par l'avant-garde fran�aise et
les Fran�ais entrent dans Neumarck et Freissels.
0714
14 Germinal II Arm�e des Pyr�n�es occidentales. Les Fran�ais enl�vent
de vive force les retranchemens d'Ozon�, pr�s Saint-Jean de Luz, et
mettent en fuite les Espagnols.
14 Germinal V Arm�e d'Italie. Les Autrichiens, vaincus sur tous les
points, �vacuent le Tyrol. Le prince Charles fait sa retraite � marche
forc�e sur la route de Vienne ; il est battu par la division Massena.
0715
15 Germinal V. Combat de Hundsmarck ; l'arri�re-garde ennemie est
d�faite par l'avant-garde fran�aise. Entr�e des Fran�ais dans
Hundsmark, Kiotenfeld, Mureau et Judembourg.
0716
16 Germinal IV Arm�e d'Italie. Reconnaissance militaire vers Cairo ;
les postes ennemis sont culbut�s.
0717
17 Germinal II Arm�e des Pyr�n�es occidentales. D�faite des Espagnols
pr�s d'Hendaye.
Arm�e d'Italie. Prise du camp de Fougasse.
0718
18 Germinal II Arm�e d'Italie. Enl�vement de tous les postes aux
environs de Breglio, dans le comt� de Nice.
18 Germinal V Suspension d'armes de cinq jours, entre les arm�es
fran�aise en Italie, et imp�riale.
0719
19 Germinal II Arm�e d'Italie. Prise d'Oneille.
0720
20 Germinal IV Arm�e d'Italie. Affaire de Voltry.
0721
21 Germinal II Arm�e des Pyr�n�es orientales. D�faite des Espagnols �
Monteilla ; prise d'Urgel.
Arm�e des Ardennes. Avantage signal� remport� par un faible
d�tachement sorti de Philippeville, qui chasse l'ennemi du bois situ�
entre Villiers et Florence, et le met en d�route.
21 Germinal IV Arm�e d'Italie. Attaque de la redoute de Montelezimo,
d�fendue par les Fran�ais ; l'ennemi est repouss�.
0722
22 Germinal VI Arm�e de Mayence. Blocus du fort d'Ehreinbrestein.
0723
23 Germinal IV Arm�e d'Italie. Bataille de Montenotte ; d�route
compl�te des ennemis.
0725
25 Germinal III Trait� de paix entre la R�publique fran�aise et le roi
de Prusse.
25 Germinal IV Arm�e d'Italie. Prise de Cossaria.
0726
26 Germinal II Arm�e de la Moselle. Combat sur les hauteurs de
Tiperdange, entre une compagnie du 1er bataillon du Haut Rhin et
quatre-vingt chasseurs r�publicains, contre soixante hussards de
Wurmser et quatre cents paysans arm�s.
26 Germinal IV Arm�e d'Italie. Bataille de Millesimo, gagn�e sur les
Austro-Sardes. Combat de Dego, d�route de l'ennemi. Combat et prise
de Saint-Jean, dans la vall�e de la Barmida. Prise de Batisolo, de
Bagnosco et de Pontenocetto. Prise des redoutes de Montezemo.
0727
27 Germinal II Arm�e de la Moselle. Les Fran�ais occupent les
hauteurs de Mertzig, apr�s en avoir chass� l'ennemi.
Arm�e d'Italie. D�faite de quinze cents Autrichiens � Ponte-di-Nava.
27 Germinal IV Arm�e d'Italie. Prise du camp retranch� de la ville de
Cera.
0728
28 Germinal II Arm�e d'Italie. Prise d'Ormea.
0729
29 Germinal II Arm�e de la Moselle. Bataille d'Arlon ; prise de cette
ville, d�route compl�te de l'ennemi.
0802
2 Flor�al I Arm�e des Pyr�n�es occidentales. Affaire de Jurgazza
Mondi, dans laquelle les troupes r�publicaines ont mis dans une
d�route compl�te un corps d'Espagnols.
0803
3 Flor�al II Arm�e des Ardennes. D�route compl�te de l'ennemi �
Aussoy, pr�s Philippeville, apr�s un combat de douze heures.
3 Flor�al IV Arm�e d'Italie. Combat et prise de la ville de Mondovi.
0804
2 Flor�al II Arm�e du Rhin. Victoire remport�e aupr�s de
Kurweiller.
0805
5 Flor�al I Arm�e des Pyr�n�es orientales. Affaire de Samouragaldi,
dans laquelle deux cents Fran�ais ont battu compl�tement quatre cents
Espagnols.
Bombardement de Fontarabie.
5 Flor�al II Arm�e des Alpes. Enl�vement de vive force de toutes
les redoutes des Monts Valaisan et Saint-Bernard et du poste de la
Thuile.
5 Flor�al IV Arm�e d'Italie. Entr�e des Fran�ais dans la ville de
B�ne.
0806
6 Flor�al IV Arm�e d'Italie. Prise de Fossano, de Cherasco, d'Alba.
0807
7 Flor�al II Arm�e des Pyr�n�es occidentales. D�route des Espagnols
et des �migr�s, repouss� des postes d'Arn�guy et d'Irameaca.
Arm�e des Ardennes. Victoire remport�e, apr�s quatre heures d'une
r�sistance opini�tre. Enl�vement de vive force, des hauteurs de Bossu ; 
entr�e et r�union des arm�es des Ardennes et du Nord dans la ville
de Beaumont.
Arm�e du Nord. Prise de Courtray, apr�s une bataille g�n�rale sur
toute la ligne, depuis Dunkerque jusqu'� Givet.
Arm�e des Pyr�n�es orientales. Les Fran�ais enl�vent de vive force le
poste du rocher d'Arrola.
D�route de quatre mille hommes d'infanterie et de dix escadrons de
cavalerie espagnole � Roqueluche ; perte consid�rable de l'ennemi.
0808
8 Flor�al II Arm�e des Pyr�n�es orientales. Les Fran�ais, au nombre
de trois mille, chassent dix mille ennemis du village d'Oms ; ils
enl�vent les gorges et le pont du Ceret.
0809
9 Flor�al IV Arm�e d'Italie. Armistice conclu avec le roi de
Sardaigne.
0810
10 Flor�al II Arm�e du Nord. Victoire � Mont-Castel sur vingt mille
Autrichiens.
Prise de Menin et d'une grande quantit� d'artillerie.
Arm�e d'Italie. Victoire sur les Pi�montais.
10 Flor�al IV Entr�e des Fran�ais dans la cit� de Ceva et de Coni.
10 Flor�al V Trait� de paix entre la R�publique fran�aise et le pape.
0811
11 Flor�al II Arm�e des Pyr�n�es orientales. Bataille gagn�e sur les
Espagnols, aux Alb�res ; enl�vement de la fameuse redoute de
Montesquiou.
11 Flor�al V Arm�e d'Italie. Pr�liminaires de paix entre la
R�publique fran�aise et l'Empereur, sign�s � Leoben par le g�n�ral
Buonaparte et les pl�nipotentiaires de l'Empereur.
0812
12 Flor�al II Arm�e du Rhin. Prise de Lambsheim et de Franckental par
les Fran�ais ; les portes de cette derni�re ville sont enfonc�es �
coups de canons.
0815
15 Flor�al II Arm�e des Pyr�n�es orientales. Les Fran�ais occupent
les hauteurs du cap de Bearn et du pays de Las-Daines, o� six mille
hommes arrivent � travers les plus nombreux obstacles ; commencement
du si�ge de Collioure.
15 Flor�al III Arm�e des Pyr�n�es orientales. Les Espagnols attaquant
le camp de Cistella, sont compl�tement battus et repouss�s.
0816
16 Flor�al IV Arm�e d'Italie. Entr�e des Fran�ais dans la ville de
Tortonne.
0817
17 Flor�al III Arm�e des Pyr�n�es orientales. Reconnoissance g�n�rale
faite par les Fran�ais sur les hauteurs de Crespia, de Bascara et sur
la Fluvia.
0818
18 Flor�al IV Arm�e d'Italie. Reconnoissance faite sur la rive du P�,
vers Plaisance.
0819
19 Flor�al IV Arm�e d'Italie. Passage du P� par l'avant-garde
r�publicaine, et combat de Fombio.
0820
20 Flor�al II Arm�e des Alpes. Prise du fort Mirabouck, apr�s
quatorze heures d'attaque, et du poste de Villeneuve-des-Prats.
Prise de la redoute de Maupertuis.
20 Flor�al III Arm�e des Pyr�n�es orientales. Attaque du camp de la
montagne de Musquirachu ; l'ennemi mis en fuite, abandonne son camp
tout tendu et tous les effets de campement ; cent quarante ennemis
tu�s, cinquante faits prisonniers.
20 Flor�al IV Arm�e d'Italie. Les Autrichiens attaquent pr�s de
Cordogno la division Laharpe, et sont vigoureusement repouss�s par les
R�publicains, qui s'emparent de Casale.
Conclusion de l'armistice avec le duc de Parme.
0821
21 Flor�al II Arm�e des Ardennes. Prise de Thuin par les Fran�ais,
apr�s un combat opini�tre : enl�vement � la ba�onnette de tous les
retranchements Autrichiens.
21 Flor�al IV Arm�e d'Italie. Bataille de Lody : passage du pont
d�fendu par l'arm�e enti�re de Beaulieu.
0822
22 Flor�al II Arm�e du Nord. D�faite des ennemis devant Tournay.
Combat de sept heures devant Courtray : d�route compl�te de
l'ennemi. D�route de l'ennemi � Ingelsmunster.
22 Flor�al IV Arm�e d'Italie. Buonaparte, g�n�ral en chef. Prise de
Pizzighitone. Entr�e des Fran�ais dans Cr�mone.
0823
23 Flor�al II Arm�e des Ardennes. Les Fran�ais enl�vent tous les
ouvrages du camp de Merbes, d'o� l'ennemi est forc� de se retirer.
Au passage de la Sambre, les grenadiers du 49e r�giment s'�lancent �
l'eau pour soutenir les tirailleurs, et mettent en d�route la l�gion
de Bourbon.
Le 68e r�giment soutient seul sur un pont l'attaque des Autrichiens
sup�rieurs en nombre, quoiqu'en butte � l'artillerie, et conserve son
poste.
0824
24 Flor�al II Arm�e des Ardennes. Combat opini�tre : prise et reprise
trois fois du village de Grandreng pr�s Beaumont.
0825
25 Flor�al II Arm�e des Alpes. Les r�publicains enl�vent de vive
force les redoutes de Riveto, de la Ramasse, et autres postes sur le
Mont-C�nis.
0826
26 Flor�al IV Arm�e d'Italie. Conclusion de la paix avec le roi de
Sardaigne.
0827
27 Flor�al II Arm�e des Pyr�n�es orientales. Sortie de la garnison de
Collioure : trois mille Espagnols repouss�s avec perte. Le g�n�ral en
chef bless� dans cette action.
0828
28 Flor�al IV Arm�e d'Italie. Les Fran�ais occupent Milan, Pavie et
Come.
0829
29 Flor�al II Arm�e du Nord. D�faite de l'ennemi � Moescroen.
Bataille gagn�e sur les coalis�s, entre Menin et Courtray.
Arm�e des Ardennes. Glorieuse r�sistance de quinze cents Fran�ais qui
s'opposent � la marche de quatorze mille Autrichiens vers Cunfoz.
Cent cinquante jeunes gens de la premi�re r�quisition qui tiennent en
�chec toute la droite de l'arm�e de Beaulieu devant Bouillon.
Arm�e des Pyr�n�es occidentales. Enl�vement de six magasins
ennemis. Rupture des �cluses de la grande m�ture royale : prise d'une
grande quantit� de bestiaux.
D�route des Espagnols, repouss�s � la ba�onnette jusqu'� leur camp de
Berra.
0830
30 Flor�al II Arm�e des Pyr�n�es orientales. D�route des Espagnols
pr�s de Figui�res.
Arm�e des Ardennes. Belle d�fense de cent soixante Fran�ais renferm�s
et attaqu�s par de nombreux ennemis dans le ch�teau de Bouillon.
30 Flor�al VI Bombardement d'Ostende par les Anglais, et d�barquement
de quatre mille d'entre eux ; les Fran�ais les enveloppent, font deux
mille prisonniers, et forcent le reste � se rembarquer pr�cipitemment
avec perte de cent hommes tu�s. Le g�n�ral anglais est lui-m�me
gri�vement bless�.
0901E
1 Prairial VII Naissance d'Honor� de Balzac
0925
25 Prairial VIII Bataille de Marengo en Italie, Kl�ber est assassin� au Caire
1008
8 Messidor II Victoire de Fleurus par Jourdan. Premi�re utilisation de la
reconnaissance a�rienne par le capitaine Coutelle, � bord du ballon L'Entreprenant
1103
3 Thermidor III Victoire de Hoche � Quiberon contre les royalistes
1109
9 Thermidor II La chute de Robespierre
1118
18 Thermidor IV Victoire de Bonaparte sur Wurmser � Castiglione
1303
Jour du travail V Mort du g�n�ral Hoche
1305
Jour des r�compenses IV Mort du g�n�ral Marceau, �g� de 27 ans, � Altenkirchen
EVENTS
  delete $event{dummy};
}

# A module must return a true value. Traditionally, a module returns 1.
# But this module is a revolutionary one, so it discards all old traditions.
"Dansons la carmagnole, vive le son du canon.";
