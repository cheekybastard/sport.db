# encoding: utf-8

# note: timezone for games (play_at) is *always* CET (central european time)


######################################
## Oesterreichische Bundesliga 2011/12
##
## more info => http://bundesliga.at

bl = Event.create!( key:      'at.2011/12',
                    title:    'Österr. Bundesliga 2011/12',
                    start_at: Time.cet('2012-04-07 00:00'),
                    league:   League.find_by_key!('at'),
                    season:   Season.find_by_key!('2011/12'))

team_keys_bl = [
 'salzburg',
 'rapid',
 'admira',
 'austria',
 'sturm',
 'ried',
 'innsbruck',
 'mattersburg',
 'wrneustadt',
 'ksv' ]

bl.add_teams_from_ary!( team_keys_bl )


Prop.create!( key: 'db.at.2011/12.version', value: '1' )
