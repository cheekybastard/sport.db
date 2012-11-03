# encoding: utf-8


cities_en = [
  ['manchester',  'Manchester'],
  ['london',      'London'],
  ['liverpool',   'Liverpool'],
  ['birmingham',  'Birmingham'],  # e.g.Aston Villa
  ['westbrom',    'West Bromwich'],
  ['newcastle',   'Newcastle upon Tyne'],
  ['stoke',       'Stoke-on-Trent'],
  ['sunderland',  'Sunderland'],
  ['wigan',       'Wigan'],
  ['southampton', 'Southampton'],
  ['reading',     'Reading'],
  ['norwich',     'Norwich'],
  ['swansea',     'Swansea']
]

en = Country.find_by_key!( 'en' )
City.create_from_ary!( cities_en, country: en )


cities_es = [
  ['bilbao',    'Bilbao'],
  ['valencia',  'Valencia'],
  ['barcelona', 'Barcelona'],
  ['madrid',    'Madrid'],
  ['malaga',    'Málaga']
]

es = Country.find_by_key!( 'es' )
City.create_from_ary!( cities_es, country: es )


cities_fr = [
  ['lille',       'Lille'],
  ['paris',       'Paris'],
  ['marseille',   'Marseille'],
  ['montpellier', 'Montpellier']
]

fr = Country.find_by_key!( 'fr' )
City.create_from_ary!( cities_fr, country: fr )


cities_it = [
  ['turin',   'Turin'],
  ['milano',  'Mailand|Milano'],
  ['napoli',  'Neapel|Napoli']
]

it = Country.find_by_key!( 'it' )
City.create_from_ary!( cities_it, country: it )


cities_pt = [
  ['porto', 'Porto'],
  ['braga', 'Braga'],
  ['lisboa', 'Lissabon|Lisboa']
]

pt = Country.find_by_key!( 'pt' )
City.create_from_ary!( cities_pt, country: pt )


cities_ru = [
  ['moskva',      'Moskau|Moskva'],
  ['stpetersburg','St. Petersburg']
]

ru = Country.find_by_key!( 'ru' )
City.create_from_ary!( cities_ru, country: ru )


cities_be = [
  ['brussel',   'Brüssel|Brussel|Bruxelles|Brussels']  # de|nl|fr|en   - RCA Anderlecht
]

be = Country.find_by_key!( 'be' )
City.create_from_ary!( cities_be, country: be )


cities_ua = [
  ['kiev',     'Kiew|Kiev|Kyiv' ],
  ['donetsk',  'Donezk|Donetsk'],
  ['kharkov',  'Kharkiv|Kharkov']
]

ua = Country.find_by_key!( 'ua' )
City.create_from_ary!( cities_ua, country: ua )


cities_nl = [
  ['amsterdam','Amsterdam'],
  ['alkmaar','Alkmaar']  ## region: North Holland
]

nl = Country.find_by_key!( 'nl' )
City.create_from_ary!( cities_nl, country: nl )


cities_hr = [
  ['zagreb','Zagreb']
]

hr = Country.find_by_key!( 'hr' )
City.create_from_ary!( cities_hr, country: hr )


cities_gr = [
  ['piraeus','Piräus|Piraeus']
]

gr = Country.find_by_key!( 'gr' )
City.create_from_ary!( cities_gr, country: gr )


cities_dk = [
  ['farum','farum']  ## region: North Zealand ??
]

dk = Country.find_by_key!( 'dk' )
City.create_from_ary!( cities_dk, country: dk )


cities_by = [
  ['borisov','Borissow|Borisov|Barysaw']
]

by = Country.find_by_key!( 'by' )
City.create_from_ary!( cities_by, country: by )


cities_sc = [
  ['glasgow','Glasgow']
]

sc = Country.find_by_key!( 'sc' )
City.create_from_ary!( cities_sc, country: sc )


cities_tr = [
  ['istanbul','Istanbul']
]

tr = Country.find_by_key!( 'tr' )
City.create_from_ary!( cities_tr, country: tr )


cities_ro = [
  ['cluj','Cluj']
]

ro = Country.find_by_key!( 'ro' )
City.create_from_ary!( cities_ro, country: ro )
 
 
cities_ch = [
  ['basel','Basel']
]

ch = Country.find_by_key!( 'ch' )
City.create_from_ary!( cities_ch, country: ch )


cities_cy = [
  ['nikosia','Nikosia|Nicosia']
]

cy = Country.find_by_key!( 'cy' )
City.create_from_ary!( cities_cy, country: cy )



cities_mx = [
  ['mexico',        'México' ],
  ['cancun',        'Cancún' ],
  ['guadalajara',   'Guadalajara' ],
  ['tuxtla',        'Tuxtla Gutiérrez' ],
  ['leon',          'León' ],
  ['morelia',       'Morelia' ],
  ['monterrey',     'Monterrey' ],
  ['pachuca',       'Pachuca' ],
  ['puebla',        'Puebla' ],
  ['queretaro',     'Querétaro' ],
  ['sanluispotosi', 'San Luis Potosì' ],
  ['torreon',       'Torreón' ],
  ['tijuana',       'Tijuana' ],
  ['toluca',        'Toluca' ],
  ['sannicolas',    'San Nicolás de los Garza' ]
]

mx = Country.find_by_key!( 'mx' )
City.create_from_ary!( cities_mx, country: mx )


cities_ca = [
  ['montreal','Montreal'],
  ['ottawa','Ottawa'],
  ['toronto','Toronto'],
  ['winnipeg','Winnipeg'],
  ['calgary','Calgary'],
  ['edmonton','Edmonton'],
  ['vancouver','Vancouver']
]

ca = Country.find_by_key!( 'ca' )
City.create_from_ary!( cities_ca, country: ca )


cities_us = [
  ['newyork','New York'],
  ['philadelphia','Philadelphia'],
  ['pittsburgh','Pittsburgh'],
  ['boston','Boston'],
  ['buffalo','Buffalo'],
  ['washington','Washington'],
  ['chicago','Chicago'],
  ['columbus','Columbus'],
  ['detroit','Detroit'],
  ['nashville','Nashville'],
  ['stlouis','St. Louis'],
  ['dallas','Dallas'],
  ['losangeles','Los Angeles'],
  ['phoenix','phoenix'],
  ['sanjose','San Jose'],
  ['anaheim','Anaheim']
]

us = Country.find_by_key!( 'us' )
City.create_from_ary!( cities_us, country: us )


Prop.create!( key: 'db.cities.version', value: '1' )