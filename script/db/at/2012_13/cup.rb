# encoding: utf-8

##################################
### ÖFB Cup 2012/13

cup = Event.create!( :key => 'at_cup_2012_13',
                     :title => 'ÖFB Cup 2012/13',
                     :start_at => Time.cet( '2012-07-13 00:00' ) )

cuprunde1  = Round.create!( :event => cup, :pos => 1, :title => '1. Runde',      :title2 => '13.-15. Juli 2012' )
cuprunde2  = Round.create!( :event => cup, :pos => 2, :title => '2. Runde',      :title2 => '25.+26. Sep 2012' )
cup16      = Round.create!( :event => cup, :pos => 3, :title => 'Achtelfinale',  :title2 => '30.+31. Okt 2012' )
cup8       = Round.create!( :event => cup, :pos => 4, :title => 'Viertelfinale', :title2 => '16.+17. April 2013' )
cup4       = Round.create!( :event => cup, :pos => 5, :title => 'Halbfinale',    :title2 => '7.+8. Mai 2013' )
cup1       = Round.create!( :event => cup, :pos => 6, :title => 'Finale',        :title2 => '30. Mai 2013' )


## bundesliga teams

salzburg    = Team.find_by_key!( 'salzburg' )
rapid       = Team.find_by_key!( 'rapid' )
admira      = Team.find_by_key!( 'admira' )
austria     = Team.find_by_key!( 'austria' )
sturm       = Team.find_by_key!( 'sturm' )
ried        = Team.find_by_key!( 'ried' )
wacker      = Team.find_by_key!( 'wacker' )
mattersburg = Team.find_by_key!( 'mattersburg' )
neustadt    = Team.find_by_key!( 'neustadt' )
wac         = Team.find_by_key!( 'wac' )

## erste liga teams

ksv           = Team.find_by_key!( 'ksv' )
altach        = Team.find_by_key!( 'altach' )
austrial      = Team.find_by_key!( 'austrial' )
stpoelten     = Team.find_by_key!( 'stpoelten' )
linz          = Team.find_by_key!( 'linz' )
groedig       = Team.find_by_key!( 'groedig' )
lustenau      = Team.find_by_key!( 'lustenau' )
vienna        = Team.find_by_key!( 'vienna' )
hartberg      = Team.find_by_key!( 'hartberg' )
horn          = Team.find_by_key!( 'horn' )

## regionalliga west teams

hard          = Team.find_by_key!( 'hard' )
bregenz       = Team.find_by_key!( 'bregenz' )
dornbirn      = Team.find_by_key!( 'dornbirn' )
kufstein      = Team.find_by_key!( 'kufstein' )
wattens       = Team.find_by_key!( 'wattens' )
austrias      = Team.find_by_key!( 'austrias')
pinzgau       = Team.find_by_key!( 'pinzgau' )
stjohann      = Team.find_by_key!( 'stjohann' )

## regionalliga mitte teams

vsv           = Team.find_by_key!( 'vsv' )
klagenfurt    = Team.find_by_key!( 'klagenfurt' )
austriak      = Team.find_by_key!( 'austriak' )
kalsdorf      = Team.find_by_key!( 'kalsdorf' )
gratkorn      = Team.find_by_key!( 'gratkorn' )
allerheiligen = Team.find_by_key!( 'allerheiligen' )
leoben        = Team.find_by_key!( 'leoben' )
gak           = Team.find_by_key!( 'gak' )
pasching      = Team.find_by_key!( 'pasching' )
voecklamarkt  = Team.find_by_key!( 'voecklamarkt' )
stflorian     = Team.find_by_key!( 'stflorian' )
wallern       = Team.find_by_key!( 'wallern' )
lask          = Team.find_by_key!( 'lask' )

## regionalliga ost teams

sollenau      = Team.find_by_key!( 'sollenau' )
amstetten     = Team.find_by_key!( 'amstetten' )
retz          = Team.find_by_key!( 'retz' )
fac           = Team.find_by_key!( 'fac' )
schwechat     = Team.find_by_key!( 'schwechat' )
wienersk      = Team.find_by_key!( 'wienersk' )
ostbahn       = Team.find_by_key!( 'ostbahn' )
oberwart      = Team.find_by_key!( 'oberwart' )
parndorf      = Team.find_by_key!( 'parndorf' )
stegersbach   = Team.find_by_key!( 'stegersbach' )

## noch einige teams

wolfurt       = Team.find_by_key!( 'wolfurt' )
schwaz        = Team.find_by_key!( 'schwaz' )
reutte        = Team.find_by_key!( 'reutte' )
spittal       = Team.find_by_key!( 'spittal' )
sak           = Team.find_by_key!( 'sak' )
dsc           = Team.find_by_key!( 'dsc' )
micheldorf    = Team.find_by_key!( 'micheldorf' )
badvoeslau    = Team.find_by_key!( 'badvoeslau' )
gaflenz       = Team.find_by_key!( 'gaflenz' )
ardagger      = Team.find_by_key!( 'ardagger' )
rohrendorf    = Team.find_by_key!( 'rohrendorf' )
heiligenkreuz = Team.find_by_key!( 'heiligenkreuz' )
viktoria      = Team.find_by_key!( 'viktoria' )


## 10 Bundeliga Teams

cup.teams << salzburg
cup.teams << rapid
cup.teams << admira
cup.teams << austria
cup.teams << sturm
cup.teams << ried
cup.teams << wacker
cup.teams << mattersburg
cup.teams << neustadt
cup.teams << wac

## 10 Erste Liga Teams

cup.teams << ksv
cup.teams << altach
cup.teams << austrial
cup.teams << stpoelten
cup.teams << linz
cup.teams << groedig
cup.teams << lustenau
cup.teams << vienna
cup.teams << hartberg
cup.teams << horn



games_cuprunde1 = [
  [  1, fac,          [0,1], altach,        Time.cet('2012-07-12 19:00') ],
#  [  2, hard,         [1,0], schwaz,        Time.cet('2012-07-13 18:30') ],
  [  3, dsc,          [1,2], hartberg,      Time.cet('2012-07-13 19:00') ], 
  [  4, gratkorn,     [0,0,0,0,4,5], wacker,        Time.cet('2012-07-13 19:00') ],
#  [  5, pasching,     [2,1], austrias,      Time.cet('2012-07-13 19:00') ],
  [  6, parndorf,     [0,3], admira,        Time.cet('2012-07-13 19:00') ],
  [  7, voecklamarkt, [3,4], lustenau,      Time.cet('2012-07-13 19:00') ],
#  [  8, kalsdorf,     [3,1], wallern,       Time.cet('2012-07-13 19:00') ],
  [  9, wattens,      [0,1], sturm,         Time.cet('2012-07-13 19:00') ],
#  [ 10, vsv,          [4,2], rohrendorf,    Time.cet('2012-07-13 19:00') ],
  [ 11, pinzgau,      [0,4], groedig,       Time.cet('2012-07-13 19:15') ],
#  [ 12, amstetten,    [0,1], schwechat,     Time.cet('2012-07-13 19:30') ],
  [ 13, stflorian,    [2,1], linz,          Time.cet('2012-07-13 19:30') ],
  [ 14, austriak,     [3,2], horn,          Time.cet('2012-07-13 19:30') ],
#  [ 15, sak,          [0,5], allerheiligen, Time.cet('2012-07-13 19:30') ],
 [ 16, gak,          [2,2,3,2], vienna,        Time.cet('2012-07-13 20:00') ],
  [ 17, wienersk,     [0,2], salzburg,      Time.cet('2012-07-13 20:30') ],
#  [ 18, stegersbach,  [2,2,3,2], reutte,        Time.cet('2012-07-14 17:00') ],
  [ 19, badvoeslau,   [1,0], stpoelten,     Time.cet('2012-07-14 17:00') ],
#  [ 20, micheldorf,   [0,1], viktoria,      Time.cet('2012-07-14 17:00') ],
#  [ 21, klagenfurt,   [1,2], stjohann,      Time.cet('2012-07-14 18:00') ],
#  [ 22, lask,         [7,0], spittal,       Time.cet('2012-07-14 18:00') ],
  [ 23, ostbahn,      [1,8], wac,           Time.cet('2012-07-14 18:00') ],
# [ 24, gaflenz,      [1,2], sollenau,      Time.cet('2012-07-14 18:00') ],
  [ 25, oberwart,     [1,3], austria,       Time.cet('2012-07-14 18:00') ],
  [ 26, leoben,       [1,3], mattersburg,   Time.cet('2012-07-14 18:00') ],
  [ 27, retz,         [1,7], austrial,      Time.cet('2012-07-14 18:00') ],
  [ 28, bregenz,      [1,2], ksv,           Time.cet('2012-07-14 18:30') ],
#  [ 29, ardagger,     [2,2,2,3], dornbirn,      Time.cet('2012-07-14 19:00') ],
  [ 30, kufstein,     [1,4], ried,          Time.cet('2012-07-14 19:00') ],
  [ 31, wolfurt,      [2,2,2,4], neustadt,      Time.cet('2012-07-15 10:30') ],
  [ 32, heiligenkreuz,[0,5], rapid,         Time.cet('2012-07-15 18:00') ]
]

games_cuprunde2 = [
  [ 1,  kalsdorf,      [3,0],         hartberg,    Time.cet('2012-09-24 19:00') ],
  [ 2,  viktoria,      [2,2,3,3,7,4], ksv,         Time.cet('2012-09-25 16:00') ],
  [ 3,  hard,          [0,3],         altach,      Time.cet('2012-09-25 16:30') ],
  [ 4,  stegersbach,   [1,3],         salzburg,    Time.cet('2012-09-25 18:00') ],
  [ 5,  pasching,      [1,1,3,2],     austrial,    Time.cet('2012-09-25 19:00') ],
  [ 6,  austriak,      [0,0,2,0],     admira,      Time.cet('2012-09-25 19:00') ],
  [ 7,  schwechat,     [0,5],         sturm,       Time.cet('2012-09-25 19:00') ],
  [ 8,  lask,          [2,0],         groedig,     Time.cet('2012-09-25 19:00') ],
  [ 9,  stjohann,      [0,3],         lustenau,    Time.cet('2012-09-25 19:00') ],
  [ 10, sollenau,      [1,1,1,5],     wacker,      Time.cet('2012-09-25 19:00') ],
  [ 11, vsv,           [3,1],         neustadt,    Time.cet('2012-09-25 19:00') ],
  [ 12, dornbirn,      [2,3],         austria,     Time.cet('2012-09-25 20:30') ],
  [ 13, badvoeslau,    [2,3],         mattersburg, Time.cet('2012-09-26 16:00') ],
  [ 14, stflorian,     [1,1,1,1,5,6], ried,        Time.cet('2012-09-26 19:00') ],
  [ 15, allerheiligen, [1,4],         rapid,       Time.cet('2012-09-26 19:00') ],
  [ 16, gak,           [0,6],         wac,         Time.cet('2012-09-26 20:20') ]
]

games_cup16 = [
  [ 1, lask,     [], mattersburg, Time.cet('2012-10-30 00:00') ],
  [ 2, rapid,    [], altach,      Time.cet('2012-10-30 00:00') ],
  [ 3, viktoria, [], ried,        Time.cet('2012-10-30 00:00') ],
  [ 4, sturm,    [], wacker,      Time.cet('2012-10-30 00:00') ],
  [ 5, pasching, [], austriak,    Time.cet('2012-10-30 00:00') ],
  [ 6, lustenau, [], wac,         Time.cet('2012-10-30 00:00') ],
  [ 7, kalsdorf, [], salzburg,    Time.cet('2012-10-30 00:00') ],
  [ 8, vsv,      [], austria,     Time.cet('2012-10-30 00:00') ]]


Game.create_knockouts_from_ary!( games_cuprunde1, cuprunde1 )
Game.create_knockouts_from_ary!( games_cuprunde2, cuprunde2 )
Game.create_knockouts_from_ary!( games_cup16, cup16 )



Prop.create!( :key => 'db.at.cup.2012/13.version', :value => '1' )
