package DateTime::Calendar::FrenchRevolutionary::Locale::fr;

use vars qw($VERSION);

$VERSION = '0.07'; # same as parent module DT::C::FR

my @months_short  = qw (Vnd Bru Fri Niv Plu Vnt Ger Flo Pra Mes The Fru S-C);
#my @add_days_short= qw (Vertu G�nie Trav Raison R�comp R�vol);
my @months = qw(Vend�miaire Brumaire  Frimaire
                Niv�se      Pluvi�se  Vent�se
	        Germinal    Flor�al   Prairial
	        Messidor    Thermidor Fructidor);
push @months, "jour compl�mentaire";

my @decade_days = qw (Primidi Duodi Tridi Quartidi Quintidi Sextidi Septidi Octidi Nonidi D�cadi);
my @decade_days_short = qw (Pri Duo Tri Qua Qui Sex Sep Oct Non D�c);

my @am_pms = qw(AM PM);

my %date_formats = (
"short" => "\%d\/\%m\/\%Y",
"medium" => "\%a\ \%d\ \%b\ \%Y",
"long" => "\%A\ \%d\ \%B\ \%EY",
"full" => "\%A\ \%d\ \%B\ \%EY\,\ \%{feast_long\}",
);

my %time_formats = (
"short" => "\%H\:\%M",
"medium" => "\%H\:\%M\:\%S",
"long" => "\%H\:\%M\:\%S",
"full" => "\%H\ h\ \%M\ mn \%S\ s",
);

my $date_before_time = "1";
my $default_date_format_length = "medium";
my $default_time_format_length = "medium";
my $date_parts_order = "dmy";

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
       1laur�ole         1mousse           0fragon           0perce-neige      0taureau
       0laurier-thym     2amadouvier       0m�z�r�on         0peuplier         1cogn�e
       2ell�bore         0brocoli          0laurier          2avelinier        1vache
       0buis             0lichen           2if               1pulmonaire       1serpette
       0thlaspi          0thymel�          0chiendent        1tra�nasse        0li�vre
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
       1luzerne          2h�m�rocalle      0tr�fle           2ang�lique        0canard
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

sub am_pm                    { $_[0]->am_pms->             [ $_[1]->hour < 5 ? 0 : 1 ] }

sub _raw_feast {
  my ($self, $date) = @_;
  $feast[$date->day_of_year_0];
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

sub    full_date_format      { $_[0]->date_formats->{full} }
sub    long_date_format      { $_[0]->date_formats->{long} }
sub  medium_date_format      { $_[0]->date_formats->{medium} }
sub   short_date_format      { $_[0]->date_formats->{short} }
sub default_date_format      { $_[0]->date_formats->{ $_[0]->{default_date_format_length} } }

sub    full_time_format      { $_[0]->time_formats->{full} }
sub    long_time_format      { $_[0]->time_formats->{long} }
sub  medium_time_format      { $_[0]->time_formats->{medium} }
sub   short_time_format      { $_[0]->time_formats->{short} }
sub default_time_format      { $_[0]->time_formats->{ $_[0]->{default_time_format_length} } }

sub _datetime_format_pattern_order { $_[0]->date_before_time ? (0, 1) : (1, 0) }

sub    full_datetime_format { join ' ', ( $_[0]->full_date_format, $_[0]->full_time_format )[ $_[0]->_datetime_format_pattern_order ] }
sub    long_datetime_format { join ' ', ( $_[0]->long_date_format, $_[0]->long_time_format )[ $_[0]->_datetime_format_pattern_order ] }
sub  medium_datetime_format { join ' ', ( $_[0]->medium_date_format, $_[0]->medium_time_format )[ $_[0]->_datetime_format_pattern_order ] }
sub   short_datetime_format { join ' ', ( $_[0]->short_date_format, $_[0]->short_time_format )[ $_[0]->_datetime_format_pattern_order ] }
sub default_datetime_format { join ' ', ( $_[0]->default_date_format, $_[0]->default_time_format )[ $_[0]->_datetime_format_pattern_order ] }

sub default_date_format_length { $_[0]->{default_date_format_length} }
sub default_time_format_length { $_[0]->{default_time_format_length} }

sub month_names         { [ @months ] }
sub month_abbreviations { [ @months_short ] }
sub day_names           { [ @decade_days ] }
sub day_abbreviations   { [ @decade_days_short ] }
sub am_pms              { [ @am_pms ] }
sub date_formats                   { \%date_formats                   }
sub time_formats                   { \%time_formats                   }
sub date_before_time               { $date_before_time                }
sub _default_date_format_length    { $default_date_format_length      }
sub _default_time_format_length    { $default_time_format_length      }
sub date_parts_order               { $date_parts_order                }

sub on_date {
  my ($self, $date) = @_;
  _load_events() unless %event;
  $event{$date->strftime('%m%d')} || "";
}

sub _load_events {
  %event = ('dummy', split /(\d{4})\n/, <<'EVENTS');
0101
1 Vend�miaire I. Entr�e des troupes fran�aises en Savoie

1 Vend�miaire III. Les postes du bois d'Aix-la-Chapelle et de Reckem sont enlev�s 
par l'Arm�e du Nord.

0102
2 Vend�miaire I. Conqu�te de Chamb�ry.

2 Vend�miaire III. Prise de la redoute et du camp de Costouge par l'Arm�e des
Pyr�n�es orientales.

2 Vend�miaire V. L'Arm�e d'Italie met en d�route l'ennemi � Governolo.

0103
3 Vend�miaire IV. Affaire de Garesio

0104
4 Vend�miaire II. L'Arm�e des Alpes enl�ve de vive force les retranchements
de Chatillon ; les Pi�montais sont mis en d�route et repassent la rivi�re de Giffe.

0105
5 Vend�miaire III Arm�e des Pyr�n�es orientales. D�faite des
Espagnols � Olia et Monteilla.

0106
6 Vend�miaire III. Capitulation de Crevecoeur devant l'Arm�e du Nord.

6 Vend�miaire III Arm�e du Rhin. Reprise de Kayserlautern et d'Alsborn.

6 Vend�miaire V Arm�e de Sambre et Meuse. L'ennemi attaque sur les
points de Wurstatt, Nider-Ulm, Ober et Nider-Ingelheim et est repouss�.

0107
7 Vend�miaire I. Prise de la ville de Nice et de la forteresse de Montalban.

7 Vend�miaire II. L'Arm�e des Alpes d�fait l'ennemi dans les gorges
de Sallanges et prend la redoute de Saint-Martin.

0108
8 Vend�miaire V Arm�e d'Italie. 150 hommes de font une sortie de Mantoue pour
se procurer du fourrage et doivent se rendre aux habitants de Reggio.

0109
9 Vend�miaire I. Les Fran�ais se rendent ma�tres de la ville de Spire.

9 Vend�miaire II. L'Arm�e des Alpes enl�ve de vive-force les
retranchements de Mont-Cormet tenus par les Pi�montais.

0111
11 Vend�miaire II Arm�e des Alpes. Capture du poste de Valmeyer, du
poste de Beaufort, de Moutiers, du bourg Saint-Maurice et du Col de la
Madeleine.

11 Vend�miaire III Arm�e de Sambre-et-Meuse. Bataille d'Aldenhoven
et d�route des troupes coalis�es.

11 Vend�miaire V. L'Arm�e du Rhin et Moselle attaque sur toute la
ligne et met l'ennemi en d�route.

0112
12 Vend�miaire II. Les Espagnols sont forc�s dans leurs camps du Boulon 
et Argel�s par l'Arm�e des Pyr�n�es orientales.

12 Vend�miaire III. Le pays de Juliers se rend � l'Arm�e de Sambre-et-Meuse.

0113
13 Vend�miaire I. Les Autrichiens sont forc�s d'�vacuer la ville de Worms.

13 Vend�miaire II Arm�e des Pyr�n�es orientales. Prise de Campredon et
d�route de la cavalerie espagnole par la garnison de Colioure.

13 Vend�miaire II. L'Arm�e des Pyr�n�es occidentales attaque les postes d'Arau
et de la vall�e d'Aure et les enl�ve.

13 Vend�miaire IV. Bonaparte r�prime une manifestation royaliste � l'�glise Saint-Roch

0115
15 Vend�miaire III. Cologne se rend � l'Arm�e de Sambre-et-Meuse.

0116
16 Vend�miaire V. L'ennemi, bloqu� � Mantoue par l'Arm�e d'Italie tente
une sortie de 4 600 hommes, sortie qui se solde par un �chec.

0117
17 Vend�miaire I. Les Autrichiens l�vent le si�ge de Lille.

17 Vend�miaire III. Combat et prise de Frankenthal par l'Arm�e du Rhin

0118
18 Vend�miaire II. Bombardement de Lyon.

18 Vend�miaire III. Prise de Shelaudenbach et de Vollfstein par l'Arm�e du Rhin
et jonction avec l'Arm�e de la Moselle � Lautreck.

0119
19 Vend�miaire III. Devant Maestricht, l'Arm�e de Sambre-et-Meuse reprend
le ch�teau de Mont-Saint-Pierre.

0120
20 Vend�miaire III. L'Arm�e de la Moselle marche sur Birkenfeldt, Oberstein,
Kirn et Meisenheim.

0121
21 Vend�miaire III. Entr�e de l'Arm�e du Nord dans Bois-le-Duc.

0122
22 Vend�miaire I. Kellerman force les Prussiens � �vacuer la ville de Verdun.

0123
23 Vend�miaire III. L'Arm�e du Rhin prend Otterberg, Rockenhausen, 
Landsberg, Alzein et Oberhausen.

0124
24 Vend�miaire II. L'Arm�e de la Moselle combat et provoque la retraite
pr�cipit�e des coalis�s qui s'�taient port�s sur Bitche et Rorbach.

24 Vend�miaire III. Combat et prise de Gellheim et de Grunstad par 
l'Arm�e du Rhin ; les Fran�ais reprennent aussi Frankenthal.

0125
25 Vend�miaire II. Combat pr�s de Sarreguemines ; l'Arm�e de la Moselle
repousse l'ennemi.

25 Vend�miaire II. Ex�cution de Marie-Antoinette.

0126
26 Vend�miaire I. Les Autrichiens attaquent plusieurs fois inutilement Hasnon
et sont repouss�s avec perte.

26 Vend�miaire II. La bataille de Wattignies pr�s de Maubeuge est remport�e
par l'Arm�e du Nord sur les Autrichiens et le blocus de Maubeuge est lev�.

26 Vend�miaire III. L'Arm�e des Pyr�n�es occidentales prend la 
m�ture d'Iraty et les fonderies d'Egay et d'Orbaycette.

26 Vend�miaire III Arm�e de la Moselle. Prise de Creutznach et de Worms.

26 Vend�miaire VI Arm�e d'Italie. Trait� de paix d�finitif � Campo-Formio
pr�s d'Udine entre le g�n�ral Bonaparte et les pl�nipotentiaires de l'Empereur,
roi de Hongrie et de Boh�me.

26 Vend�miaire VI. Congr�s � Rastadt pour la conclusion de la paix entre
la R�publique fran�aise et l'Empire germanique.

0127
27 Vend�miaire II. 600 r�publicains de l'Arm�e d'Italie remportent
l'avantage � Gillette sur 4 000 Autrichiens, Croates et Pi�montais et les
repoussent.

27 Vend�miaire III. L'Arm�e des Pyr�n�es occidentales d�fait 7 000 
Espagnols pr�s de Buruet et d'Almandos.

27 Vend�miaire III. L'Arm�e du Rhin met en d�route l'ennemi pr�s
de Kircheim et de Worms et prend ces deux villes.

0128
28 Vend�miaire II. L'Arm�e d'Italie remporte
une victoire compl�te � Gilette sur les Pi�montais.

28 Vend�miaire III. L'Arm�e du Nord d�fait l'ennemi pr�s de Nim�gue
et d�truit la l�gion de Rohan.

28 Vend�miaire V. L'Arm�e du Rhin et Moselle est attaqu�e � Retzengen
et � Simonswald.

0129
29 Vend�miaire I. L'Arm�e fran�aise force les
Autrichiens � �vacuer Mayence.

29 Vend�miaire III. L'Arm�e de la Moselle entre dans Bingen
apr�s avoir chass� les Prussiens des positions qu'ils tenaient en avant
de la ville.

29 Vend�miaire V Arm�e d'Italie. D�barquement en Corse, prise
de Bastia, de Saint-Florent et de Bonifacio.

29 Vend�miaire XIV Bataille de Trafalgar.

0130
30 Vend�miaire II. L'Arm�e des Pyr�n�es occidentales met
en d�route trois colonnes espagnoles apr�s une fusillade de cinq heures.

30 Vend�miaire V Arm�e de Sambre et Meuse. L'ennemi passe le Rhin sur
six points depuis Bacharach jusqu'� Andernach, attaque la t�te de pont
de Neuwied et est forc� � la retraite.

0201
1 Brumaire I Reprise de la ville de Longwi, les Prussiens �vacuent le
territoire fran�ais.

1 Brumaire II Arm�e des Pyr�n�es orientales. Avantage sur les
espagnols dans la vall�e de Baigory.

1 Brumaire II Arm�e du Nord. Enl�vement des postes de Warneton,
Comines, Werwick, Ronek, Alluin, Menin, Furnes et Poperingues.

1 Brumaire II Arm�e du Rhin. Prise d'Alzey et d'Oppenheim.

0202
2 Brumaire II Arm�e d'Italie. D�faite � Utel de cinq mille ennemis par
neuf cents r�publicains, apr�s onze heures de combat.

2 Brumaire II Arm�e du Rhin. Attaque du poste de Breitenstein par les
Autrichiens ; l'ennemi repouss�.

2 Brumaire III Arm�e de Sambre et Meuse. Prise de Coblentz.

2 Brumaire III Arm�e des Pyr�n�es orientales. Combat � Bhaga, 
les Espagnols sont repouss�s.

2 Brumaire III Arm�e des Pyr�n�es orientales. Enl�vement
des postes de Dori et Tozas et des retranchements de Casteillan.

0203
3 Brumaire V Trait� de paix conclu entre la R�publique fran�aise et le
roi de Naples et des deux Siciles.

0204
4 Brumaire IV D�but du Directoire.

4 Brumaire VI Arm�e d'Italie. Trait� d'alliance entre la R�publique
fran�aise et le roi de Sardaigne.

0205
5 Brumaire III Arm�e du Nord. Prise de Hultz, Axel et Sas-de-Gand.

5 Brumaire V Arm�e de Sambre et Meuse. Attaque et prise de Saint
Wendel, Kayserslautern, Kirchenpoland, Bingen et de la montagne de
Saint-Roch.

5 Brumaire V Arm�e du Rhin et Moselle. Passage du Rhin par les
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
12 Brumaire I. Les Autrichiens sont forc�s d'�vacuer Lanoy.

12 Brumaire III Arm�e de la Moselle. Entr�e des Fran�ais dans
Rheinfels, �vacu� par douze cents ennemis.

12 Brumaire V Arm�e d'Italie. Prise du village de Saint-Michel ; les
ponts sur l'Adige br�l�s par les Fran�ais. L'ennemi se porte sur le
Lavis, o� il est battu et repouss� jusque dans le village de
Segonzano.

0214
14 Brumaire V Arm�e de Sambre et Meuse. Prise de Maestricht.

0215
15 Brumaire V Arm�e d'Italie. L'ennemi ayant pass� la Brenta est
oblig� de la repasser apr�s un combat meurtrier.

0216
16 Brumaire I. Bataille de Gemmapes. Les Fran�ais entrent dans Mons.

16 Brumaire III Arm�e du Nord. Prise du fort de Schenk.

0217
17 Brumaire III Arm�e du Nord. La sortie de la garnison de
Berg-op-zomm est repouss�e.

0218
18 Brumaire I. Prise de la ville de Tournay par les Fran�ais.

18 Brumaire III Arm�e du Nord. Entr�e triomphante des Fran�ais dans
Nim�gue.

18 Brumaire VIII. Coup d'�tat de Bonaparte : fin du Directoire, d�but du Consulat

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
25 Brumaire V Arm�e d'Italie. Bataille d'Arcole, conclue le 27.

0226
26 Brumaire I. Les Fran�ais se rendent ma�tres de la ville et du port
d'Ostende, �vacu� par les Autrichiens.

26 Brumaire I. Prise de Sainte-Remi.

26 Brumaire I. Capitulation de la ville de Malines.

26 Brumaire II Arm�e du Rhin. L'arm�e surprend et enl�ve pr�s de
Strasbourg trois postes ennemis vaillamment d�fendus.

26 Brumaire II Le si�ge de la ville de Granville est lev�.

26 Brumaire IV. Combat du champ di Pietri.

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
30 Brumaire II Arm�e des Pyr�n�es orientales. Bataille gagn�e � Escola,
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

2 Frimaire V Arm�e du Rhin et Moselle. Sortie par la
garnison de Kehl.

0303
3 Frimaire IV Arm�e d'Italie. Combat d'Intrapa et de Garesio.

3 Frimaire V. Sortie faite par la garnison de Mantoue, qui est
brusquement repouss�e.

0304
4 Frimaire II Arm�e d'Italie. D�faite de huit cents Pi�montais par
cinq cents Fran�ais, � Castel-Genest et � Brec, prise de Figaretto.

4 Frimaire III Arm�e des Pyr�n�es occidentales. Victoire remport�e �
Ost�s, apr�s un combat de deux jours.

0306
6 Frimaire IV Arm�e d'Italie. Combat de Spinardo.

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

10 Frimaire II Arm�e du Nord. Attaque des postes ennemis sur
la Lys.

10 Frimaire IV Arm�e de Sambre et Meuse. Attaque et prise de
Creutzenach.

0311
11 Frimaire I Arm�e des Ardennes. Capitulation de la citadelle de
Namur.

11 Frimaire II Arm�e du Rhin. Enl�vement de la redoute du pont de
Landgraben et des retranchements de Gambsheim.

11 Frimaire III Arm�e du Rhin et Moselle. Enl�vement de la redoute,
dite de Merlin, devant Mayence.

11 Frimaire V. L'ennemi attaque la t�te du pont d'Huningue et s'empare
de la demi-lune mais en est d�log�.

11 Frimaire XIII. Napol�on Premier est couronn� Empereur des Fran�ais

11 Frimaire XIV. Bataille d'Austerlitz : l'arm�e fran�aise �crase l'arm�e austro-russe

0312
12 Frimaire II Arm�e des Ardennes. Vigoureuse sortie de la garnison
de Givet.

12 Frimaire II Arm�e du Rhin. Combat pr�s du bois de Gambshein.

12 Frimaire VIII Bataille d'Hohenlinden.

0314
14 Frimaire II Arm�e du Rhin. L'ennemi, chass� du village
d'Oppendorff, est poursuivi jusqu'� Druzenheim.

14 Frimaire III Arm�e de la Moselle. Les r�publicains enl�vent de
vive force les redoutes de Salbach.

0319
19 Frimaire II Arm�e du Rhin. Prise des hauteurs de Dawendorff, apr�s
une action tr�s vive.

0321
21 Frimaire I Arm�e du Nord. Prise des villes de Wezem et de Wert et
de Ruremonde, capitale de la Gueldre autrichienne.

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
25 Frimaire II Arm�e de la Moselle. Enl�vement de vive force des
hauteurs de Marsal du Dahubruck et de Lambach.

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
3 Niv�se II Arm�e du Rhin et Moselle. Enl�vement de tous les
retranchements de Bischweiller, Druzenheim et Haguenau.

0405
5 Niv�se II Arm�e du Rhin et Moselle. D�route de l'ennemi �
Obers�ebach. Prise du ch�teau de Geisberg.

0406
Arm�e du Rhin et Moselle. Evacuation forc�e des lignes de la Lauter
et de Weissembourg, et lev�e du blocus de Landau par l'ennemi.

0407
7 Niv�se II Arm�e du Rhin. Les Fran�ais enl�vent les postes de
Germersheim et Spire.

0408
8 Niv�se III Arm�e du Nord. Passage du Vaal, prise de Bommel, du fort
Saint-Andr� et de quatre postes environnants, reddition de Grave.

0413
13 Niv�se I Arm�e du Nord. Un d�tachement de l'avant-garde fran�aise
p�n�tre dans le pays de Luxembourg, et s'empare des caisses de
l'Empereur, dans lesquelles se trouvent deux cent mille francs
esp�ces.

0414
14 Niv�se II Arm�e de l'Ouest. Prise sur les rebelles de la Vend�e de
l'�le de Noirmoutiers.

0417
17 Niv�se II Arm�e du Rhin et Moselle. Prise de Worms.

17 Niv�se III Arm�e des Pyr�n�es occidentales. Prise du fort de la
Trinit�.

0420
20 Niv�se VI Arm�e d'Italie. Deux colonnes de troupes fran�aises
marchent sur la ville de Rome pour venger la mort du g�n�ral Duphot,
et l'insulte faite � l'ambassadeur de la R�publique fran�aise ; � leur
approche, l'insurrection �clate dans l'Ombrie ; ses habitants secouent
le joug du gouvernement papal et se d�clarent libres et ind�pendants.

0422
22 Niv�se III Arm�e du Nord. Prise de Thiel et de six forts.

0423
23 Niv�se II Arm�e des Pyr�n�es occidentales. Enl�vement de vive
force du poste de la Montagne de Louis XIV par quatre cents
r�publicains.

23 Niv�se V Arm�e d'Italie. Combat de Saint-Michel devant V�ronne.

23 Niv�se V Arm�e d'Italie. L'ennemi attaque la t�te de la ligne de
Montebaldo et est repouss�.

0424
24 Niv�se III Arm�e du Nord. Prise d'Heusdin.

0425
25 Niv�se V Arm�e d'Italie. Bataille de Rivoli, l'ennemi en d�route
compl�te.

0426
26 Niv�se V Arm�e d'Italie. Dix mille ennemis forcent le passage
d'Anghiari.

26 Niv�se V Arm�e d'Italie. Le g�n�ral Provera � la t�te de six mille
hommes, attaque le faubourg Saint-Georges de Mantoue pendant toute la
journ�e, mais inutilement.

0427
27 Niv�se II Arm�e du Rhin et Moselle. Les ennemis font une sortie du
fort Vauban et sont repouss�s.

27 Niv�se V Bataille de la Favorite (faubourg de Mantoue), Wurmser
�choue dans sa sortie de Mantoue et Provera est oblig� de capituler.

0428
28 Niv�se III Arm�e du Nord. Prise d'Utrecht, d'Amersford et des
lignes du Greb, passage de la Lech.

0429
29 Niv�se II Arm�e du Rhin. Evacuation totale du d�partement du
Bas-Rhin par les coalis�s ; reprise du fort Vauban.

29 Niv�se III Arm�e du Nord. Prise de Gertuydemberg.

0502
2 Pluvi�se I Ex�cution de Louis XVI.

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
9 Pluvi�se V Arm�e d'Italie. Le g�n�ral Murat d�barque � Torgole et chasse les ennemis ; 
le g�n�ral Vial les tourne et leur fait quatre cent cinquante
prisonniers. Entr�e des Fran�ais dans Roveredo et Trente.

9 Pluvi�se VI Arm�e d'Italie. Prise de la ville d'Anc�ne, par l'arm�e
fran�aise.

0510
10 Pluvi�se V Arm�e du Rhin et Moselle. A trois heures du matin, les
R�publicains sur deux colonnes, font une sortie de la t�te de pont
d'Huningue et chassent l'ennemi des deux premi�res parall�les.

0513
13 Pluvi�se I. La r�publique fran�aise d�clare la guerre au roi
d'Angleterre et au stathouder de Hollande.

13 Pluvi�se VI Arm�e d'Italie. Une des colonnes de l'arm�e d'Italie,
premi�re division, traverse le territoire G�n�vois et �tablit son
quartier g�n�ral � Ferney-Voltaire.

0514
14 Pluvi�se V Arm�e d'Italie. Les Fran�ais attaquent les d�bris de
l'arm�e autrichienne derri�re le Lavis et les repoussent jusqu'�
Saint-Michel.
Entr�e des Fran�ais � Jmola, Faenza et Forli.
Capitulation de Mantoue.

0515
15 Pluvi�se III Arm�e des Pyr�n�es occidentales. Prise de Roses,
apr�s 27 jours de si�ge.

Arm�e du Nord. Conqu�te de la Hollande : toutes les places fortes et
les vaisseaux de guerre restent au pouvoir des Fran�ais. Entr�e des
troupes fran�aises � Midelbourg et � Flesingue.

0517
17 Pluvi�se III Arm�e des Pyr�n�es occidentales. D�route compl�te
des Espagnols � Sare et Berra.
D�route de quinze mille Espagnols battus � Urrugne et � Chauvin-Dragon
par cinq mille r�publicains.

0518
18 Pluvi�se V Arm�e d'Italie. Les avant-postes de l'ennemi repouss�s
sur la droite de l'Adige ; prise de Derunbano.

0521
21 Pluvi�se V Arm�e d'Italie. Prise d'Anc�ne.

21 Pluvi�se VI Arm�e d'Italie. Les troupes fran�aises continuent leur
marche sur Rome.

0522
22 Pluvi�se V Arm�e d'Italie. Prise de Lorette.

0527
27 Pluvi�se VI Arm�e d'Italie. Entr�e des Fran�ais dans Rome ; le
g�n�ral Berthier se rend au capitole, o�, au nom de la R�publique
fran�aise, il proclame la R�publique romaine.

0601
1 Vent�se II Arm�e du Rhin. Les Fran�ais enl�vent de vive force le
poste d'Ogersheim.

1 Vent�se V Arm�e d'Italie. Trait� de paix avec le pape, conclu �
Tolentino.

0604
4 Vent�se V Arm�e d'Italie. Reprise du poste de Treviso.

0605
5 Vent�se V Arm�e d'Italie. Affaire de Foi : l'ennemi est chass� de
ses retranchements ; les Fran�ais tombent ensuite sur un corps de
chasseurs Tyroliens et les d�font.

Les Fran�ais, attaqu�s � Bidole, battent compl�tement l'ennemi.
Kellerman passe la Piave � San-Mamma, et met en fuite un poste de
hussards ennemis qui en d�fendaient le passage.

0607
7 Vent�se X. Naissance de Victor Hugo

0611
11 Vent�se III Arm�e des Pyr�n�es orientales. Prise de Bezalu.

0612
12 Vent�se V Arm�e d'Italie. Les Fran�ais attaquent l'ennemi � Monte
di-Savaro et le d�font.

0615
15 Vent�se VI Arm�e en Helv�tie. Capitulation de la ville de Berne.

0616
16 Vent�se II Arm�e des Ardennes. Combat pr�s Soumoy et Cerffontaine ; 
d�faite de l'ennemi.

0617
17 Vent�se I. D�claration de guerre au roi d'Espagne.

0618
18 Vent�se II Arm�e de la Moselle. D�faite de trois bataillons
autrichiens sur les hauteurs des forges de Joegerthal.

0620
20 Vent�se V. Arm�e d'Italie. Une division de l'arm�e fran�aise se
rend � Feltre ; � son approche l'ennemi �vacue la ligne de Cordevoie
et se porte sur Bellurn.

0622
22 Vent�se V. Arm�e d'Italie. Passage de la Piave vis-�-vis le
village de Vidor, l'ennemi �vacue son camp de la Gampana.

0623
23 Vent�se V. Arm�e d'Italie. Combat de Sacile.
Affaire de Bellurn, dans laquelle l'arri�re-garde ennemie est
envelopp�e et faite prisonni�re.

23 Vent�se VI Apr�s cinq combats successifs et meurtriers, les Suisses
�vacuent Morat.

0626
26 Vent�se V Arm�e d'Italie. Passage du Tagliamento, malgr� des
forces sup�rieures et une r�sistance opini�tre.
Prise du village de Gradisca.

0627
27 Vent�se VI Trait� d'alliance et de commerce entre les R�publiques
fran�aise et cisalpine.

0628
28 Vent�se V Arm�e d'Italie. Prise de Palma Nova, que l'ennemi est
forc� d'�vacuer.

0629
29 Vent�se V Arm�e d'Italie. Prise de la ville de Gradisca. Passage
du pont de Casasola.

29 Vent�se XII Ex�cution du duc d'Enghien.

0630
30 Vent�se V Arm�e d'Italie. Combat de Lavis. Les troupes ennemies,
apr�s un combat opini�tre, sont envelopp�es par les Fran�ais.

0701
1 Germinal V Arm�e d'Italie. Entr�e des Fran�ais dans Goritz.
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
15 Germinal V Arm�e d'Italie. Combat de Hundsmarck ; l'arri�re-garde ennemie est
d�faite par l'avant-garde fran�aise. Entr�e des Fran�ais dans
Hundsmark, Kiotenfeld, Mureau et Judembourg.

0716
16 Germinal IV Arm�e d'Italie. Reconnaissance militaire vers Cairo ;
les postes ennemis sont culbut�s.

0717
17 Germinal II Arm�e des Pyr�n�es occidentales. D�faite des Espagnols
pr�s d'Hendaye.

Arm�e d'Italie. Prise du camp de Fougasse.

17 Germinal II Ex�cution de Georges Danton, Camille Desmoulins et Fabre d'�glantine.

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
4 Flor�al II Arm�e du Rhin. Victoire remport�e aupr�s de
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

7 Flor�al VI Naissance d'Eug�ne Delacroix

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
19 Flor�al II Lavoisier est guillotin�.

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

28 Flor�al XII �&nbsp;Le gouvernement de la R�publique Fran�aise est confi� � un empereur.&nbsp;�

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

0901
1 Prairial II Arm�e des Ardennes. D�faite de l'ennemi � Lobbes et
Erquelinne, apr�s un combat de six heures.

1 Prairial IV Arm�e d'Italie. Conclusion d'une armistice avec le duc
de Mod�ne.

1 Prairial VII. Naissance d'Honor� de Balzac

0904
4 Prairial II Arm�e du Rhin. Bataille de Schifferstadt, gagn�e par
quinze mille r�publicains contre quarante mille autrichiens. Un
g�n�ral autrichien tu�.

Arm�e de la Moselle. D�route compl�te de l'avant-garde de Beaulieu.

0905
5 Prairial II Arm�e des Ardennes. Victoire � Merbes-le-Ch�teau apr�s
une charge g�n�rale.

0906
6 Prairial II Arm�e de la Moselle. Le poste de Saint-Hubert d�fendu
par deux mille autrichiens est enlev� par les Fran�ais ; fuite de
l'ennemi.

6 Prairial IV Arm�e d'Italie. Huit cents habitans r�volt�s, attaqu�s
� Bagnasco, sont mis en d�route ; cent des leurs tu�s, et leur village
br�l�.

6 Prairial VI Arm�e d'Italie. R�union de la r�publique de Gen�ve � la
r�publique fran�aise.

Les troupes fran�aises attaquent les insurg�s du Haut-Valais.

0907
7 Prairial II Arm�e de la Moselle. Prise des redoutes et de la ville
de Dinan.

Arm�e des Pyr�n�es orientales. Evacuation par l'ennemi des forts
Saint-Elme et Port-Vendre, reprise de Collioure.

7 Prairial III. Dix mille hommes d'infanterie, et douze cents de
cavalerie, espagnole attaquent une reconnaissance faite par les
troupes du camp des hauteurs de Pontos ; mais ils sont mis en d�route.

7 Prairial IV Arm�e d'Italie. R�volte de Pavie.

7 Prairial V Ex�cution de Gracchus Babeuf.

0908
8 Prairial III. Trait� de paix et d'alliance, conclu � la Haye, entre
la R�publique fran�aise et les membres des �tats-g�n�raux de Hollande.

0911
11 Prairial IV Arm�e d'Italie. D�faite de cinq mille Autrichiens �
Borghetto ; passage du Mincio par les grenadiers ; prise du village de
Valeggio.

0912
12 Prairial II Arm�e de la Moselle. Attaque des avants-postes du camp
de S. G�rard par les Fran�ais ; les coalis�s sont chass�s de la
majeure partie de leurs avants-postes.

12 Prairial IV Arm�e de Sambre et Meuse. A minuit les r�publicains
s'emparent des avants-postes, situ�s en avant de Nider-Diebach, et
dans le jour forcent l'ennemi d'abandonner la gorge de Mannebach.

0913
13 Prairial II Arm�e de la Moselle. Prise de la ville de Dinan par
les troupes r�publicaines.

13 Prairial IV Arm�e d'Italie. Prise de la forteresse de Peschiera.

Arm�e de Sambre et Meuse. Prise des retranchemens de la Sieg et de la
Acher.

0914
14 Prairial II Arm�e des Ardennes. D�route des ennemis, pr�s du bois
de Sainte-Marie.

0915
15 Prairial II Arm�e des Pyr�n�es occidentales. Bataille gagn�e sur
plusieurs points ; les r�publicains enl�vent � la ba�onnette, le camp
Ispeguy et les redoutes des Aldudes et de Berdaritz.

Arm�e des Pyr�n�es orientales. Prise de Thouzen et Riben, sur les
Espagnols, forc�s � la retraite.

15 Prairial IV Arm�e de Sambre et Meuse. Bataille d'Altenkirchen ;
l'ennemi mis en d�route.

Arm�e d'Italie. Entr�e des Fran�ais dans V�ronne.

0916
16 Prairial IV Arm�e d'Italie. Six cents grenadiers Fran�ais enl�vent
� la ba�onnette le faubourg S. Georges, et la t�te du pont de Mantoue.

Prise du faubourg de Cherial, de ses retranchemens, et de la tour ;
l'ennemi est forc� de se retirer dans Mantoue.

0917
17 Prairial II Arm�e des Alpes. Prise du fameux poste des barricades ; 
communication r�tablie entre l'arm�e des Alpes et celle d'Italie.

17 Prairial IV Arm�e d'Italie. Une colonne fran�aise, dirig�e sur le
lac de Conio, enl�ve et d�truit le fort de Fuentes.

Arm�e de Sambre et Meuse. Prise de Dierdoff, et de Montabaur.

0918
18 Prairial IV Arm�e de Sambre et Meuse. Prise de Weilbourg.

0919
19 Prairial II Arm�e des Pyr�n�es orientales. D�faite de quatre mille
Espagnols par un petit nombre de Fran�ais, au-del� de la Jonqui�re ;
investissement de Bellegarde.

Les Fran�ais se rendent ma�tres de Campredon et de diff�rents postes.

0920
20 Prairial IV Arm�e du Rhin et Moselle. L'ennemi �vacue
Kayserslautern, Tripstadt, Neustadt et Spire.

0923
23 Prairial II Arm�e des Alpes. D�route de quinze cents Pi�montais,
par deux cents Fran�ais, dans la vall�e d'Aoste.

Arm�e des Pyr�n�es orientales. Les Fran�ais se rendent ma�tres de
Ripoll, et d�truisent ses forges.

23 Prairial VI Arm�e de l'Orient. Prise de l'�le de Malte.

0924
24 Prairial II Arm�e de la Moselle. Passage de la Sambre, par l'arm�e
de la Moselle ; investissement de Charleroy.

Arm�e de la Moselle, des Ardennes, et du Nord r�unies. Action
vigoureuse sur plusieurs colonnes qui repoussent tous les
avants-postes de Charleroy, et se portent victorieuses jusqu'au dessus
de Gosselies.

24 Prairial III Arm�e de Sambre et Meuse. Prise de Luxembourg.

0925
25 Prairial VIII. Bataille de Marengo en Italie, Kl�ber est assassin� au Caire

0926
26 Prairial II Arm�e de la Moselle, des Ardennes, et du Nord r�unies.
Les Fran�ais enl�vent et d�truisent sous le feu du canon ennemi, une
redoute pr�s Charleroy, apr�s avoir vigoureusement repouss� la
garnison.

En moins de dix minutes, les Fran�ais enl�vent devant Charleroy, la
redoute plac�e � c�t� de la chauss�e de Bruxelles ; le premier
bataillon du Bas-Rhin repousse vigoureusement une sortie de la
garnison de Charleroy.

26 Prairial III Arm�e des Pyr�n�es orientales. Bataille de la Fluvia ; 
d�route de vingt-huit mille Espagnols.

26 Prairial IV Arm�e de Sambre et Meuse. Six compagnies de grenadiers
s'emparent de Nassau.

Arm�e du Rhin et Moselle. Les retranchemens des Autrichiens entre
Franckental et le Rehut, sont forc�s par les Fran�ais.

0927
27 Prairial IV Arm�e de Sambre et Meuse. Combat pr�s de Wetzlar ; les
ennemis sont forc�s de repasser la Dyle.

0928
28 Prairial II Arm�e de la Moselle, des Ardennes, et du Nord.
Victoire remport�e sur les coalis�s aupr�s de Trassignies.

0929
29 Prairial IV Arm�e du Nord. Prise d'Ypres.

0930
30 Prairial II Arm�e des Alpes. D�faite des Pi�montais, au petit
St. Bernard.

1001
1 Messidor II Arm�e des Pyr�n�es orientales. Reprise de Campredon,
apr�s un combat opini�tre.

1 Messidor IV Arm�e d'Italie. Entr�e des Fran�ais dans Reggio et
Bologne.

Reddition du fort Urbain, et de trois cents hommes de garnison.

Ferrare et son ch�teau sont occup�s par les Fran�ais.

1002
2 Messidor II Arm�e des Pyr�n�es orientales. Prise des postes de
l'�toile et de Bezalu.

1003
3 Messidor IV Arm�e d'Italie. Les Fran�ais attaquent les avant-postes
de Beaulieu, et les mettent en d�route.

1005
5 Messidor II Arm�e des Pyr�n�es occidentales. Bataille de la Croix
des bouquets, et enl�vement des postes du Rocher et Dos d'Asne.

Arm�e d'Italie. Conclusion de l'armistice avec le Pape.

1006
6 Messidor IV Arm�e de Rhin et Moselle. Passage du Rhin pr�s
Strasbourg ; prise du fort de Kell.

1007
7 Messidor II Arm�e du Nord, des Ardennes, et de la Moselle. Prise de
Charleroy.

7 Messidor IV Arm�e de Rhin et Moselle. Prise de Wilstett.

1008
8 Messidor II Arm�e du Nord, des Ardennes, et de la Moselle. Victoire
m�morable de Fleurus, remport�e apr�s dix-huit heures de combat, par
soixante-dix mille r�publicains, contre cent mille hommes des arm�es
coalis�es. Premi�re utilisation de la reconnaissance a�rienne par le 
capitaine Coutelle, � bord du ballon L'Entreprenant.

Arm�e des Pyr�n�es orientales. Prise de Relver, et d�route compl�te
des Espagnols.

Arm�e de Sambre et Meuse. Avantage consid�rable remport� sur
l'ennemi, aux portes de Lernes, Marchiennes, Monceau et Souvret.

8 Messidor III Arm�e des Alpes et d'Italie. D�faite d'un corps
nombreux de Pi�montais, venus pour s'emparer d'Ormea.

8 Messidor IV Arm�e de Rhin et Moselle. Prise d'Offembourg.

1009
9 Messidor IV Arm�e de Rhin et Moselle. L'ennemi est repouss�
d'Appenwhir.

L'ennemi est repouss� d'Urtassen.

Arm�e d'Italie. Entr�e des Fran�ais dans Livourne.

1010
10 Messidor III Arm�e des Pyr�n�es occidentales. Prise du camp
retranch� de Deva.

10 Messidor IV Arm�e de Rhin et Moselle. Bataille de Renchen.

1011
11 Messidor IV Arm�e d'Italie. Capitulation du ch�teau de Milan.

1012
12 Messidor XII Naissance de George Sand

1013
13 Messidor II Arm�e de Sambre et Meuse. Enl�vement des redoutes et
du camp de Roxule, des postes du Mont-Palisel et du bois d'Harv�.

Prise de Mons.

Arm�e du Nord. Prise de la ville d'Ostende et de son port.

1014
Arm�e du Nord. Entr�e des Fran�ais dans Tournay.

Arm�e du Rhin. Les retranchemens ennemis et plusieurs de leurs
avant-postes sont forc�s et pris par les Fran�ais.

Arm�e des Pyr�n�es occidentales. Les R�publicains enl�vent toutes les
positions ennemies jusqu'� Lecumbery, et le forcent de se retirer
jusqu'� Yrursum.

Arm�e de Rhin et Moselle. Attaque de la montagne de Knubis ; prise
d'une redoute plac�e au sommet.

Arm�e de Sambre et Meuse. Passage du Rhin pr�s de Neuwied ; prise de
plusieurs redoutes arm�es.

14 Messidor VI
Arm�e d'Egypte. L'arm�e fran�aise effectue son d�barquement �
Alexandrie, d�fait les Mamelucks, et soumet les villes d'Alexandrie,
de Rosette et du Caire.

1015
15 Messidor II Arm�e d'Italie. D�route de quatre mille Pi�montais par
la garnison de Louano, qui les chasse de Pietra.

1016
16 Messidor IV Arm�e de Sambre et Meuse. Combat pr�s Willerdorff.

Arm�e de Rhin et Moselle. Combat d'Oss ; attaque et prise de Baden et
de Freudenstatt.

1017
17 Messidor II Arm�e du Nord. Prise d'Oudenarde et de Gand.

17 Messidor IV Arm�e du Rhin et Moselle. Bataille de Rastadt ; perte
�norme de l'ennemi sur le champ de bataille ; il est chass� de
Kupenheim, et contraint de repasser la Murg.

Arm�e d'Italie. Enl�vement � la ba�onette des retranchemens
autrichiens, entre la t�te du lac de Garde et l'Adige, et de la
position de Ballone.

1018
18 Messidor II Arm�e de Sambre et Meuse. D�faite de trente mille
ennemis � Vaterlo, par l'avant-garde fran�aise, compos�e de quatorze
mille hommes.

18 Messidor III Arm�e des Pyr�n�es occidentales. Combat d'Yrursum ;
l'infanterie fran�aise charge et d�fait la cavalerie espagnole.

18 Messidor IV Arm�e d'Italie. Plusieurs milliers de paysans r�volt�s
sont attaqu�s au village de Lugo par un bataillon Fran�ais et mis en
d�route.

1019
19 Messidor II Arm�e de Sambre et Meuse. Victoire remport�e sur les
coalis�s � Sombref.

19 Messidor IV Combat devant Limbourg ; l'ennemi est poursuivi jusques
dans la ville.

1020
20 Messidor II Arm�e de Sambre et Meuse. Combat tr�s vif �
Chapelle-Saint-Lambert ; d�route de l'ennemi.

20 Messidor V Arm�e d'Italie. Par suite des conqu�tes de l'arm�e
d'Italie, le g�n�ral Buonaparte se rend � Milan, et proclame la
R�publique cisalpine.

1021
21 Messidor IV Arm�e de Sambre et Meuse. Passage de la Lahn ; marche
de l'arm�e sur Francfort et Mayence.

Arm�e du Rhin et Moselle. Combat en avant de Raspadret dans la gorge
en avant de Guersbach ; l'ennemi est forc� de se retirer derri�re
Dourlach.

Arm�e de Sambre et Meuse. Combat en avant de Butzbach, d'Obermel et
de Camberg ; prise de Friedberg.

1022
22 Messidor II Arm�e de Sambre et Meuse. Entr�e victorieuse de
l'arm�e dans Bruxelles.

Arm�e des Pyr�n�es occidentales. Les Fran�ais enl�vent de vive force
le camp des �migr�s pr�s Berdaritz.

22 Messidor IV Arm�e de Rhin et Moselle. L'ennemi est chass�
d'Ettlingen, Durlach et Carlsruh.

1024
24 Messidor III Arm�e des Pyr�n�es occidentales. Prise du camp
retranch� de Deybat.

1025
25 Messidor I Jean-Paul Marat est assassin� dans son bain par Charlotte Corday.

25 Messidor II Arm�e du Rhin. Bataille gagn�e sur toute la ligne ;
prise de quinze canons et des postes de Freibach, Freimersheim, et des
montagnes de Platzberg et de Sankolp.

25 Messidor III Arm�e des Pyr�n�es occidentales. Prise de Durango.

1026
26 Messidor II Arm�e du Rhin. Prise des gorges d'Hoehspire, et entr�e
des Fran�ais dans Spire et Neustadt.

Arm�e d'Italie. Prise de Verttaute par les Fran�ais.

Arm�e de la Moselle. Prise � la ba�onnette des redoutes et du poste
de Tripstadt.

Arm�e de Rhin et Moselle. Prise des postes d'Haslach et de Haussen.

1027
27 Messidor II Arm�e de Sambre et Meuse. Le poste de la Montagne de
Fer, apr�s Louvain, est enlev� de vive force par les Fran�ais, qui se
rendent ma�tres de la ville de Louvain, malgr� la vigoureuse
r�sistance de l'ennemi.

Arm�e du Nord. Prise de la ville de Malines.

1028
28 Messidor II Arm�e de Sambre et Meuse. Prise de Namur.

Arm�e d'Italie. Quatre mille cinq cents Autrichiens de la garnison de
Mantoue, font une sortie, et sont repouss�s jusqu'aux palissades.

Arm�e de Sambre et Meuse. Prise de Francfort.

1029
29 Messidor I Charlotte Corday, qui a assassin� Jean-Paul Marat, est ex�cut�e.

29 Messidor II Arm�e du Rhin. Prise de Kayserlauter.

Arm�e de Sambre et Meuse. Reddition de Landr�cies, apr�s six jours de
tranch�e.

29 Messidor III L'ennemi, forc� dans toutes ses positions, abandonne
la Biscaye et se retire derri�re l'Ebre ; prise des Salines de
Mictorie et de Bilbao.

29 Messidor IV Attaque et prise du poste d'Alpersbach.

Attaque et d�route de tous les postes ennemis, entre le Necker et la
Kinche.

Prise de Rheinfelden, Seckingen et de tout le Friekthal.

Reconnaissance militaire faite par les Fran�ais sur la route
d'Aschaffenbourg.

1030
30 Messidor II Arm�e du Nord. Prise de Nieuport, apr�s cinq jours de
tranch�e.

30 Messidor IV Arm�e d'Italie. Attaque du camp retranch� des
Autrichiens sous Mantoue ; ils sont repouss�s sous les murs de la
place ; pendant ce temps, les Fran�ais mettent le feu en cinq endroits
de la ville, et ouvrent la tranch�e � cinquante toises des ouvrages
avanc�s.

Arm�e de Rhin et Moselle. Entr�e des Fran�ais dans Stutgard ; combat
opini�tre � Echingen ; les Fran�ais restent ma�tres de toute la rive
gauche de Necker.

1101
1 Thermidor II Arm�e de Sambre et Meuse. D�faite de l'ennemi sur les
hauteurs en arri�re de Tirlemont.

1103
3 Thermidor II Arm�e de Sambre et Meuse. D�route de l'ennemi � Hui :
prise de Saint-Tros.

3 Thermidor III Victoire de Hoche � Quiberon contre les royalistes

1104
4 Thermidor III Trait� de paix conclu entre la R�publique fran�aise et
le roi d'Espagne.

4 Thermidor IV Arm�e de Sambre et Meuse. Prise de Schwinfurt.

1105
5 Thermidor X Naissance d'Alexandre Dumas p�re.

1106
6 Thermidor II Arm�e des Pyr�n�es orientales. Entr�e des r�publicains
dans la vall�e de Bastan, bombardement de Fontarabie.

6 Thermidor IV Arm�e de Sambre et Meuse. Capitulation de la ville et
citadelle de Wurtsbourg.

1108
8 Thermidor II Arm�e d'Italie. Prise de vive force, par les Fran�ais,
du village de Roccavion.

8 Thermidor IV Arm�e de Sambre et Meuse. Capitulation du fort de
Koenigstein.

1109
9 Thermidor I Arm�e de Sambre et Meuse. Entr�e des Fran�ais dans
Li�ge.

9 Thermidor II. La chute de Robespierre.

1110
10 Thermidor II Arm�e du Nord. Prise de Cassandria et passage du
Cacysche.

1111
11 Thermidor III Arm�e des Alpes et d'Italie. Enl�vement des redoutes
du champ di Pietri.

11 Thermidor IV Arm�e de Sambre et Meuse. Sortie de la garnison de
Mayence : l'ennemi est vigoureusement repouss�.

1112
12 Thermidor II Arm�e des Pyr�n�es occidentales. Conqu�te de la
vall�e de Bastan. Prise du fort de Figuier, de Fontarabie.

1113
13 Thermidor IV Arm�e d'Italie. D�faite des Autrichiens � Solo.
L'ennemi est battu � Lonado.

1114
Arm�e d'Italie. Reprise de Brescia.

1115
15 Thermidor IV Arm�e de Sambre et Meuse. prise de Koenigshoffen.

1116
16 Thermidor II Arm�e des Pyr�n�es occidentales. Les Fran�ais se
rendent ma�tres du poste important d'Ernani, de la ville de
Saint-S�bastien, de sa citadelle et du port du passage.

16 Thermidor IV Arm�e du Rhin et Moselle. Prise du poste de
Heidenheim.

Arm�e d'Italie. D�faite compl�te des Autrichiens ; reprise de Solo,
Lonado et Castiglione.

1117
17 Thermidor IV Arm�e d'Italie. Prise de Saint-Ozeto. Un bataillon
fran�ais marche sur Gavardo et culbute les ennemis. D�faite d'une
colonne ennemie � Gavardo.

Arm�e de Sambre et Meuse. Prise de Bamberg.

1118
18 Thermidor IV Arm�e d'Italie. L'arm�e de Wurmser, post�e entre le
village de Solf�rino, et la Chiesa, est mise en d�route.

1119
19 Thermidor IV L'ennemi retranch� derri�re le Mincio, entre Peschiera
et Mantoue, est attaqu�, mis en d�route, et l�ve le si�ge de
Peschiera.

Arm�e de Sambre et Meuse. Combat d'Altendorff.

1120
20 Thermidor IV Arm�e d'Italie. Les Fran�ais reprennent leurs
anciennes positions, passent le Mincio et p�n�trent � V�rone.

1121
21 Thermidor II Arm�e de la Moselle. Enl�vement des retranchements et
hauteurs de Pelingen. Les Fran�ais enl�vent de vive force le pont de
Vasserbilich.

Arm�e du Rhin et Moselle. L'ennemi �vacue Neresheim.

Arm�e de Sambre et Meuse. Combat sur la Rednitz ; prise de Forscheim.

1122
22 Thermidor II Arm�e de la Moselle. Entr�e des Fran�ais dans Tr�ves.

Arm�e des Pyr�n�es occidentales. Prise de Toloza.

1123
23 Thermidor IV Arm�e d'Italie. Les Fran�ais reprennent leurs
positions devant Mantoue.

1124
24 Thermidor IV Arm�e d'Italie. Les Fran�ais attaquent l'ennemi � la
Corona, et � Montebaldo ; ils s'emparent de ces postes et de Pr�abolo.

Arm�e du Rhin et Moselle. Bataille de Heidenheim, apr�s dix-sept
heures de combat ; l'ennemi fait sa retraite derri�re la Vernitz.

Arm�e de Sambre et Meuse. Prise du fort de Rhotemberg.

Arm�e du Rhin et Moselle. Entr�e des Fran�ais dans Br�gentz.

1125
25 Thermidor IV Arm�e d'Italie. L'ennemi est forc� � la
Roque-Danfonce et � Lodron. Une autre colonne de Fran�ais passe
l'Adige, pousse l'ennemi sur Roveredo, et fait quelques centaines de
prisonniers.

1126
26 Thermidor II Arm�e des Pyr�n�es occidentales. Les Espagnols se
laissent enlever plusieurs postes, ainsi que la redoute d'Alloqui.

Arm�e des Pyr�n�es orientales. Victoire remport�e par les Fran�ais
aupr�s de St.-Laurent de la Mouga. D�faite � Rocaseins, de quinze
mille Espagnols, par quatre mille r�publicains.

1128
28 Thermidor II Arm�e de Sambre et Meuse. Reprise du Quesnoy.

28 Thermidor IV Prise de Neumarch.

1129
29 Thermidor IV Trait� de paix entre la R�publique fran�aise et le duc
de Wurtemberg.

1130
30 Thermidor IV Arm�e de Sambre et Meuse. L'ennemi est chass� de la
hauteur de Sulzbach.

Bataille de Poperg et Leinfeld, prise de Castel.

1202
2 Fructidor IV Arm�e d'Italie. Retraite de l'arm�e de Wurmser
derri�re Trente, apr�s avoir br�l� sa marine sur le lac de Garde.

1206
6 Fructidor VI Exp�dition d'Irlande. Les troupes fran�aises op�rent
leur d�barqument en Irlande et se rendent ma�tre de Killala.

1207
7 Fructidor IV Arm�e d'Italie. Prise de Borgoforte et de Governolo,
apr�s une vive canonnade.

Arm�e du Rhin et Moselle. Combat de Friedberg et passage du Lech � la
nage par les Fran�ais ; l'ennemi est repouss� et mis en d�route.

7 Fructidor VI Trait� d'alliance offensive et d�fensive entre les
R�publiques fran�aise et helv�tique.

1208
8 Fructidor III Arm�e des Alpes et d'Italie. Victoire remport�e sur
un corps consid�rable de Pi�montais.

1209
9 Fructidor II Arm�e du Nord. Prise du fort l'Ecluse.

1210
10 Fructidor II Arm�e de Sambre et Meuse. Enl�vement � la ba�onette
du village d'Anzain et des postes et redoutes tenant � Valenciennes.

Reprise de Valenciennes.

10 Fructidor VI Exp�dition d'Irlande. Les Fran�ais d�barqu�s en
Irlande attaquent le g�n�ral Lack � Castlbar, lui prennent six pi�ces
de canons et le mettent en fuite.

1211
11 Fructidor II Arm�e des Pyr�n�es occidentales. D�faite de sept mille
Espagnols � Eibon. D�route des Espagnols � Ermilla. D�route de
quatre mille ennemis et entr�e des Fran�ais � Oudoroa.

1213
13 Fructidor II Arm�e de Sambre et Meuse. Reprise de Cond�.

1214
14 Fructidor III Arm�e des Alpes et d'Italie. D�route de quatre mille
Pi�montais, venus pour attaquer le Mont-Gen�ve.

14 Fructidor IV Trait� de paix entre la R�publique fran�aise et le
margrave de Baden.

1215
15 Fructidor III Arm�e des Alpes et d'Italie. D�faite de quinze cents
Pi�montais, venus pour attaquer le poste de Cerise.

15 Fructidor III Trait� de paix entre la R�publique fran�aise et le
landgrave de Hesse-Cassel.

1216
16 Fructidor II Arm�e de la Moselle. Combat tr�s vif pr�s
Sandweiller.

1217
17 Fructidor IV Arm�e du Rhin et Moselle. L'ennemi attaquant et
attaqu� depuis Ingolstaldt jusqu'� Fresing, est battu sur tous les
points.

1218
18 Fructidor II Arm�e des Pyr�n�es occidentales. D�faite dans la
vall�e d'Aspe de six mille Espagnols par six cents Fran�ais.

D�route des Espagnols, mis en fuite par les avant postes de Lescun.

18 Fructidor IV Arm�e d'Italie. Attaque par les Fran�ais de
Santo-Marco. L'ennemi chass� de Pi�ve et Roveredo, se retire au
ch�teau de la Pietra.

Arm�e du Rhin et Moselle. La garnison de Philisbourg et Manheim est
repouss�e jusque sous les murs de Philisbourg.

18 Fructidor V Coup d'�tat contre les royalistes.

1219
19 Fructidor III Arm�e de Sambre et Meuse. Passage du Rhin par l'aile
gauche de l'arm�e. L'ennemi est chass� de tous ses retranchements.

Prise de Keyserwerth avec son artillerie et de Dusseldorff.

1221
21 Fructidor I Arm�e du Nord. Bataille d'Honscoote.

Arm�e des Ardennes. Les ennemis abandonnent les postes d'Hasti�res.

Arm�e d'Italie. D�route compl�te des Pi�montais, repouss�s des postes
de Brouis-Hutel et Levenzo.

21 Fructidor IV
Arm�e du Rhin et Moselle. Armistice conclu avec S. A. S. R. Bavaro
palatine.

L'avant-garde du centre, rencontre l'ennemi � Mainbourg, et le
culbute.

Arm�e d'Italie. Attaque du camp retranch� de Primolac ; l'ennemi mis
en fuite, se rallie dans le fort de Coveto, qu'il est forc� d'�vacuer.

1222
22 Fructidor I Arm�e du Nord. Fuite pr�cipit�e du duc d'Yorc ;
retraite de quarante mille Anglais, Hessois et coalis�s, forc�s de
lever le blocus de Dunkerque et de Bergues.

22 Fructidor IV Arm�e d'Italie. L'ennemi chass� de la rive droite de
la Brenta, se retire � Bassano ; les r�publicains lui livrent bataille
en avant de la ville, le mettent en d�route, et le poursuivent jusqu'�
Citadella.

1223
23 Fructidor VI Arm�e fran�aise en Helv�tie. Affaire de Stanz ; les
Suisses sont mis en pleine d�route.

1224
24 Fructidor I Arm�e des Alpes. Avantage remport� par les Fran�ais,
dans la plaine d'Aigne-Belle.

24 Fructidor III Arm�e de Sambre et Meuse. L'arm�e fran�aise passe le
Rhin en pr�sence de l'ennemi, qui s'y oppose inutilement, et le
repousse au-del� de la ville de Dusseldorff, dont il reste le ma�tre.

1225
25 Fructidor I Arm�e du Rhin. L'ennemi attaqu� sur tous les points,
est chass� de tous ses postes, aupr�s de Lauterbourg.

1226
26 Fructidor I Arm�e du Nord. Combat � Werwick et Comines.

26 Fructidor II Arm�e de la Moselle. Combat en avant de Courteren.

26 Fructidor IV Arm�e du Rhin et Moselle. Combat de Kamlach ;
l'ennemi est repouss� jusqu'� Mindelheim.

26 Fructidor V Trait� de paix conclu entre la R�publique fran�aise et
la reine de Portugal.

1227
27 Fructidor I Arm�e des Alpes. L'ennemi est chass� des hauteurs de
Belleville ; prise de la redoute et des retranchements d'Epierre.

27 Fructidor III Arm�e de Sambre et Meuse. Combat d'Enef et
d'Hanleshorn.

27 Fructidor IV Arm�e d'Italie. Prise de Porto-Tegnago.

1228
28 Fructidor I Arm�e du Rhin. Les Fran�ais enl�vent le camp retranch�
de Nothweiller, et poursuivent l'ennemi jusqu'au-del� de Bondenthal.

28 Fructidor II Arm�e des Alpes. L'ennemi est chass� par les
Fran�ais, des camps de la Chenal, Sambuck, Prati, et de divers autres
postes.

1229
29 Fructidor IV Arm�e d'Italie. Bataille de S. Georges ; l'ennemi,
battu sur tous les points, est contraint de se sauver dans Mantoue.

1230
30 Fructidor I Arm�e de l'Ouest. Victoire remport�e par les
r�publicains sur les rebelles de la Vend�e, pr�s de Montaigu.

Arm�e des Pyr�n�es occidentales. Avantage remport� par les Fran�ais
sur les Espagnols, � Urdach, dans la vall�e de Bastan.

30 Fructidor II Arm�e du Nord. D�route totale de l'ennemi � Boxtel.

30 Fructidor IV Arm�e de Sambre et Meuse. Combat et prise
d'Altenkirchen ; l'ennemi, complettement battu, se retire sur la Lahn.

1301
1 jour compl�mentaire I Arm�e des Pyr�n�es orientales. Reprise du
poste de Verret.

Arm�e des Pyr�n�es orientales. Reprise de Bellegarde, derni�re place
fran�aise occup�e par l'ennemi.

1302
2 jour compl�mentaire I Arm�e des Pyr�n�es orientales. Les Fran�ais
se rendent ma�tres de Sterry.

2 jour compl�mentaire II Arm�e de Sambre et Meuse. Victoire remport�e
par toute la ligne de l'arm�e fran�aise, depuis Maseick jusqu'�
Sprimont.

Prise de Lauwfeld, d'Emale et de Montenack ; passage de l'Ourte et de
Laywale.

2 jour compl�mentaire IV Arm�e de Rhin et Moselle. Attaque
infructueuse du fort de Kehl par l'ennemi.

1303
3 jour compl�mentaire III Arm�e de Sambre et Meuse. Combat sur la
Lahn ; prise de Limbourg, Dietz et Nasseau.

Arm�e d'Italie. Combat sur la ligne de Borghetto ; d�faite des
Autrichiens.

3 jour compl�mentaire V. Mort du g�n�ral Hoche, g�n�ral en chef de
l'arm�e de Sambre et Meuse.

1304
4 jour compl�mentaire I Arm�e des Pyr�n�es occidentales. Prise de
Villefranche et du camp de Prades.

Prise d'Escalo et d'Uaborsy, occup�s par les Espagnols.

4 jour compl�mentaire II Arm�e de Sambre et Meuse. Enl�vement de vive
force des hauteurs de Clermont, apr�s sept attaques successives.

Arm�e d'Italie. Victoire du Cairo sur les Pi�montais, soutenus par
dix mille Autrichiens.

4 jour compl�mentaire III. Reddition de Manheim par capitulation.

1305
5 jour compl�mentaire II Arm�e des Pyr�n�es occidentales. D�route des
Espagnols au Mont-Roch.

5 jour compl�mentaire IV Mort du g�n�ral Marceau, �g� de 27 ans, tu� �
Altenkirchen par un coup de carabine.
EVENTS
  delete $event{dummy};
}

# A module must return a true value. Traditionally, a module returns 1.
# But this module is a revolutionary one, so it discards all old traditions.
"Dansons la carmagnole, vive le son du canon.";
