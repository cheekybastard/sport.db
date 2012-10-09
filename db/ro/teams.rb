# encoding: utf-8


l1 = [
  [ 'astra',              'Astra Ploiesti',         'AFC' ],
  [ 'ceahlau',            'Ceahlaul Piatra Neamt',  'FCC' ],
  [ 'cfr',                'CFR Cluj',               'CFR' ],
  [ 'chiajna',            'Concordia Chiajna',      'CCH' ],
  [ 'iasi',               'CSMS Iasi',              'CSI' ],
  [ 'dinamo',             'Dinamo Bucuresti',       'FCD' ],
  [ 'fcbrasov',           'FC Brasov',              'FCB' ],
  [ 'gazmetan_severin',   'FC Severin',             'FCS' ],
  [ 'vaslui',             'FC Vaslui',              'FCV' ],
  [ 'gazmetan_medias',    'Gaz Metan Medias',       'GMM' ],
  [ 'gloria_bistrita',    'Gloria Bistrita',        'GBS' ],
  [ 'otelul',             'Otelul Galati',          'OTG' ],
  [ 'pandurii',           'Pandurii Tg Jiu',        'PTJ' ],
  [ 'petrolul',           'Petrolul Ploiesti',      'PPL' ],
## fix: at/rapid!!!! already taken
  [ 'rapid',              'Rapid Bucuresti',        'RBU' ],
  [ 'steaua',             'Steaua Bucuresti',       'SBU' ],
  [ 'u_cluj',             'U Cluj',                 'UCJ' ],
  [ 'viitorul_constanta', 'Viitorul Constanta',     'VCT' ]
]

ro = Country.find_by_key!( 'ro' )

Team.create_from_ary!( l1, club: true, country: ro )


Prop.create!( key: 'db.ro.teams.version', value: '1' )