# encoding: utf-8

## fix/todo:
##  chelsea, mancity, etc. already defined in cl
##  change create to create_or_update or similar (check for name convention in Rails?)

## change manunited to manutd ??


## nb: three letter codes (tags) taken from official premierleague.com site 

teams = [
  [ 'chelsea',     'Chelsea|Chelsea FC|FC Chelsea',    'CHE', 'city:london' ],
  [ 'manunited',   'Manchester United|Man Utd|Manchester U.',                 'MUN', 'city:manchester' ],
  [ 'mancity',     'Manchester City|Man City|Man. City',                  'MCI', 'city:manchester' ],
  [ 'arsenal',     'Arsenal|Arsenal FC|FC Arsenal',             'ARS', 'city:london' ],
  [ 'everton',     'Everton|Everton FC|FC Everton',             'EVE', 'city:liverpool' ],
  [ 'tottenham',   'Tottenham Hotspur|Tottenham',               'TOT', 'city:london' ],
  [ 'westbrom',    'West Bromwich Albion|West Brom',            'WBA', 'city:westbrom' ],
  [ 'westham',     'West Ham United|West Ham',                  'WHU', 'city:london' ],
  [ 'fulham',      'Fulham|Fulham FC|FC Fulham',                'FUL', 'city:london' ],
  [ 'newcastle',   'Newcastle United|Newcastle',                'NEW', 'city:newcastle' ],
  [ 'swansea',     'Swansea City|Swansea',                      'SWA', 'city:swansea' ],
  [ 'stoke',       'Stoke City|Stoke',                          'STK', 'city:stoke' ],
  [ 'sunderland',  'Sunderland|Sunderland AFC|AFC Sunderland',  'SUN', 'city:sunderland' ],
  [ 'liverpool',   'Liverpool|Liverpool FC|FC Liverpool',       'LIV', 'city:liverpool' ],
  [ 'wigan',       'Wigan Athletic|Wigan',                      'WIG', 'city:wigan' ],
  [ 'astonvilla',  'Aston Villa',                               'AVL', 'city:birmingham' ],
  [ 'southampton', 'Southampton|Southampton FC|FC Southampton', 'SOU', 'city:southampton' ],
  [ 'reading',     'Reading|Reading FC|FC Reading',             'RDG', 'city:reading' ],
  [ 'norwich',     'Norwich City|Norwich',                      'NOR', 'city:norwich' ],
  [ 'qpr',         'Queens Park Rangers',                       'QPR', 'city:london' ]]


en = Country.find_by_key!( 'en' )

Team.create_from_ary!( teams, club: true, country: en )


Prop.create!( key: 'db.en.teams.version', value: '1' )