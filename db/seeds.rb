# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

millonarios = Team.create(name: 'Millonarios')
real_madrid = Team.create(name: 'Real Madrid')

match = Match.create(home_team_id: millonarios.id, away_team_id: real_madrid.id, stadium: 'Santiago Bernabéu')

kaka = Player.create(name: 'Kaká', team: real_madrid)
jose = Player.create(name: 'José Callejón', team: real_madrid)
alvaro = Player.create(name: 'Álvaro Morata', team: real_madrid)
karim = Player.create(name: 'Karim Benzema', team: real_madrid)

Goal.create(match: match, team: real_madrid, player: kaka, minute: 13)
Goal.create(match: match, team: real_madrid, player: jose, minute: 23)
Goal.create(match: match, team: real_madrid, player: alvaro, minute: 32)
Goal.create(match: match, team: real_madrid, player: alvaro, minute: 36)
Goal.create(match: match, team: real_madrid, player: kaka, minute: 37)
Goal.create(match: match, team: real_madrid, player: kaka, minute: 60)
Goal.create(match: match, team: real_madrid, player: jose, minute: 68)
Goal.create(match: match, team: real_madrid, player: karim, minute: 78)
