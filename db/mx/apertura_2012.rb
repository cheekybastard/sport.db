# encoding: utf-8

# note: timezone for games (play_at) is *always* CST (central standard time / -6 hours ??)


mx = Event.create!( key: 'mx_ap_2012',
                    title: 'México Primera División Apertura 2012',
                    start_at: Time.cst('2012-07-20 00:00')  )


america   = Team.find_by_key!( 'america' )
atlante   = Team.find_by_key!( 'atlante' )
atlas     = Team.find_by_key!( 'atlas'   )
chivas    = Team.find_by_key!( 'chivas'  )
cruzazul  = Team.find_by_key!( 'cruzazul' )
jaguares  = Team.find_by_key!( 'jaguares' )
leon      = Team.find_by_key!( 'leon'  )
monarcas  = Team.find_by_key!( 'monarcas' )
monterrey = Team.find_by_key!( 'monterrey' )
pachuca   = Team.find_by_key!( 'pachuca'  )
puebla    = Team.find_by_key!( 'puebla'  )
queretaro = Team.find_by_key!( 'queretaro' )
sanluis   = Team.find_by_key!( 'sanluis' )
slaguna   = Team.find_by_key!( 'slaguna'  )
tijuana   = Team.find_by_key!( 'tijuana'  )
toluca    = Team.find_by_key!( 'toluca' )
tigres    = Team.find_by_key!( 'tigres' )
pumas     = Team.find_by_key!( 'pumas' )


mx.teams << america
mx.teams << atlante
mx.teams << atlas
mx.teams << chivas
mx.teams << cruzazul
mx.teams << jaguares
mx.teams << leon
mx.teams << monarcas
mx.teams << monterrey
mx.teams << pachuca
mx.teams << puebla
mx.teams << queretaro
mx.teams << sanluis
mx.teams << slaguna
mx.teams << tijuana
mx.teams << toluca
mx.teams << tigres
mx.teams << pumas

j1 = Round.create!( event: mx, pos: 1, title: 'Jornada 1', start_at: Time.cst('2012-07-20'), title2: '20, 21 y 22 de julio' )
j2 = Round.create!( event: mx, pos: 2, title: 'Jornada 2', start_at: Time.cst('2012-07-27'), title2: '27, 28 y 29 de julio' )
j3 = Round.create!( event: mx, pos: 3, title: 'Jornada 3', start_at: Time.cst('2012-08-03'), title2: '3, 4, y 5 de agosto' )
j4 = Round.create!( event: mx, pos: 4, title: 'Jornada 4', start_at: Time.cst('2012-08-10'), title2: '10, 11 y 12 de agosto' )
j5 = Round.create!( event: mx, pos: 5, title: 'Jornada 5', start_at: Time.cst('2012-08-17'), title2: '17, 18 y 19 de agosto' )
j6 = Round.create!( event: mx, pos: 6, title: 'Jornada 6', start_at: Time.cst('2012-08-24'), title2: '24, 25 y 26 de agosto' )
j7 = Round.create!( event: mx, pos: 7, title: 'Jornada 7', start_at: Time.cst('2012-08-31'), title2: '31 de agosto, 1 y 2 de septiembre' )
j8 = Round.create!( event: mx, pos: 8, title: 'Jornada 8', start_at: Time.cst('2012-09-14'), title2: '14, 15 y 16 de septiembre' )


games_j1 = [
  [ jaguares,  [], tigres,   Time.cst('2012-07-20 19:30') ],
  [ tijuana,   [], puebla,   Time.cst('2012-07-20 21:30') ],
  [ cruzazul,  [], monarcas, Time.cst('2012-07-21 17:00') ],
  [ queretaro, [], leon,     Time.cst('2012-07-21 17:00') ],
  [ slaguna,   [], sanluis,  Time.cst('2012-07-21 19:00') ],
  [ monterrey, [], america,  Time.cst('2012-07-21 19:00') ],
  [ atlas,     [], pumas,    Time.cst('2012-07-21 21:00') ],
  [ toluca,    [], chivas,   Time.cst('2012-07-22 12:00') ],
  [ atlante,   [], pachuca,  Time.cst('2012-07-22 18:00') ]]


games_j2 = [
  [ monarcas,   [], monterrey,   Time.cst('2012-07-27 19:30') ],
  [ leon,       [], tijuana,     Time.cst('2012-07-27 21:30') ],
  [ america,    [], jaguares,    Time.cst('2012-07-28 17:00') ],
  [ pachuca,    [], atlas,       Time.cst('2012-07-28 19:00') ],
  [ tigres,     [], atlante,     Time.cst('2012-07-28 19:00') ],
  [ sanluis,    [], cruzazul,    Time.cst('2012-07-28 21:00') ],
  [ puebla,     [], toluca,      Time.cst('2012-07-29 12:00') ],
  [ pumas,      [], queretaro,   Time.cst('2012-07-29 12:00') ],
  [ chivas,     [], slaguna,     Time.cst('2012-07-29 17:00')]]

games_j3 = [
  [ slaguna,     [], puebla,    Time.cst('2012-08-03 19:00') ],
  [ tijuana,     [], pumas,     Time.cst('2012-08-03 19:30') ],
  [ monarcas,    [], sanluis,   Time.cst('2012-08-03 21:30') ],
  [ cruzazul,    [], chivas,    Time.cst('2012-08-04 17:00') ],
  [ queretaro,   [], pachuca,   Time.cst('2012-08-04 17:00') ],
  [ monterrey,   [], jaguares,  Time.cst('2012-08-04 19:00') ],
  [ atlas,       [], tigres,    Time.cst('2012-08-04 21:00') ],
  [ toluca,      [], leon,      Time.cst('2012-08-05 12:00') ],
  [ atlante,     [], america,   Time.cst('2012-08-05 18:00') ]]

games_j4 = [
  [ jaguares,    [], atlante,  Time.cst('2012-08-10 19:30') ],
  [ leon,        [], slaguna,   Time.cst('2012-08-10 21:30') ],
  [ america,     [], atlas,     Time.cst('2012-08-11 17:00') ],
  [ pachuca,     [], tijuana,   Time.cst('2012-08-11 19:00') ],
  [ tigres,      [], queretaro, Time.cst('2012-08-11 19:00') ],
  [ sanluis,     [], monterrey, Time.cst('2012-08-11 21:00') ],
  [ puebla,      [], cruzazul,  Time.cst('2012-08-12 12:00') ],
  [ pumas,       [], toluca,    Time.cst('2012-08-12 12:00') ],
  [ chivas,      [], monarcas,  Time.cst('2012-08-12 17:00') ]]

games_j5 = [
  [ tijuana,     [], tigres,    Time.cst('2012-08-17 19:30') ],
  [ monarcas,    [], puebla,    Time.cst('2012-08-17 21:30') ],
  [ cruzazul,    [], leon,      Time.cst('2012-08-17 21:30') ],
  [ queretaro,   [], america,   Time.cst('2012-08-18 17:00') ],
  [ slaguna,     [], pumas,     Time.cst('2012-08-18 19:00') ],
  [ monterrey,   [], atlante,   Time.cst('2012-08-18 19:00') ],
  [ sanluis,     [], chivas,    Time.cst('2012-08-18 21:00') ],
  [ atlas,       [], jaguares,  Time.cst('2012-08-18 21:00') ],
  [ toluca,      [], pachuca,   Time.cst('2012-08-19 12:00') ]]

games_j6 = [
  [ jaguares,    [], queretaro, Time.cst('2012-08-24 19:30') ],
  [ leon,        [], monarcas,  Time.cst('2012-08-24 21:30') ],
  [ america,     [], tijuana,   Time.cst('2012-08-25 17:00') ],
  [ pachuca,     [], slaguna,   Time.cst('2012-08-25 19:00') ],
  [ tigres,      [], toluca,    Time.cst('2012-08-25 19:00') ],
  [ puebla,      [], sanluis,   Time.cst('2012-08-26 12:00') ],
  [ pumas,       [], cruzazul,  Time.cst('2012-08-26 12:00') ],
  [ chivas,      [], monterrey, Time.cst('2012-08-26 17:00') ],
  [ atlante,     [], atlas,     Time.cst('2012-08-26 18:00') ]]

games_j7 = [
  [ tijuana,      [], jaguares,  Time.cst('2012-08-31 19:30') ],
  [ monarcas,     [], pumas,     Time.cst('2012-08-31 21:30') ],
  [ cruzazul,     [], pachuca,   Time.cst('2012-09-01 17:00') ],
  [ queretaro,    [], atlante,   Time.cst('2012-09-01 17:00') ],
  [ slaguna,      [], tigres,    Time.cst('2012-09-01 19:00') ],
  [ monterrey,    [], atlas,     Time.cst('2012-09-01 19:00') ],
  [ sanluis,      [], leon,      Time.cst('2012-09-01 21:00') ],
  [ toluca,       [], america,   Time.cst('2012-09-02 12:00') ],
  [ chivas,       [], puebla,    Time.cst('2012-09-02 17:00') ]]

games_j8 = [
  [ jaguares,     [], toluca,    Time.cst('2012-09-14 19:30') ],
  [ pachuca,      [], monarcas,  Time.cst('2012-09-14 19:30') ],
  [ leon,         [], chivas,    Time.cst('2012-09-14 21:30') ],
  [ america,      [], slaguna,   Time.cst('2012-09-15 17:00') ],
  [ tigres,       [], cruzazul,  Time.cst('2012-09-15 19:00') ],
  [ atlas,        [], queretaro, Time.cst('2012-09-15 21:00') ],
  [ puebla,       [], monterrey, Time.cst('2012-09-16 12:00') ],
  [ pumas,        [], sanluis,   Time.cst('2012-09-16 12:00') ],
  [ atlante,      [], tijuana,   Time.cst('2012-09-16 18:00') ]]


Game.create_from_ary!( games_j1, j1 )
Game.create_from_ary!( games_j2, j2 )
Game.create_from_ary!( games_j3, j3 )
Game.create_from_ary!( games_j4, j4 )
Game.create_from_ary!( games_j5, j5 )
Game.create_from_ary!( games_j6, j6 )
Game.create_from_ary!( games_j7, j7 )
Game.create_from_ary!( games_j8, j8 )


Prop.create!( key: 'db.mx.apertura.2012.version', value: '1' )