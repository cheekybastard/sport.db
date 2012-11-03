# encoding: utf-8

#############################
## national leagues & cups

at = Country.find_by_key!( 'at' )
de = Country.find_by_key!( 'de' )
en = Country.find_by_key!( 'en' )
es = Country.find_by_key!( 'es' )
it = Country.find_by_key!( 'it' )
fr = Country.find_by_key!( 'fr' )
nl = Country.find_by_key!( 'nl' )
pt = Country.find_by_key!( 'pt' )
ru = Country.find_by_key!( 'ru' )
ro = Country.find_by_key!( 'ro' )
mx = Country.find_by_key!( 'mx' )
br = Country.find_by_key!( 'br' )


leagues_club = [
 [ 'at',          'Österr. Bundesliga',     at ],
 [ 'at.cup',      'ÖFB Cup',                at ],
 [ 'de',          'Deutsche Bundesliga',    de ],
 [ 'en',          'English Premier League', en ],
 [ 'es',          'Primera División',       es ],
 [ 'it',          'Serie A',                it ],
 [ 'fr',          'Ligue 1',                fr ],
 [ 'nl',          'Eredivisie',             nl ],
 [ 'pt',          'SuperLiga',              pt ],
 [ 'ru',          'Premier Liga',           ru ],
 [ 'ro',          'Romania Liga 1',         ro ],
 [ 'mx.apertura', 'México Primera División Apertura', mx ],
 [ 'br',          'Campeonato Brasileiro Série A', br ]
]

League.create_from_ary!( leagues_club, club: true )


########################################
## international leagues w/ football clubs teams

leagues_club_intl = [
  [ 'cl', 'Champions League' ],
  [ 'el', 'Europa League' ]
]

League.create_from_ary!( leagues_club_intl, club: true )


#######################################
## internationl tournaments & cups w/ national teams

leagues_intl = [
  [ 'euro', 'Euro'      ],
  [ 'wm',   'World Cup' ],   ## change key to world??
  [ 'wmq',  'World Cup Quali' ]
]

League.create_from_ary!( leagues_intl, club: false )



Prop.create!( key: 'db.leagues.version', value: '1' )
