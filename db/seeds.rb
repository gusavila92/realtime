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

(1..8).each do |goal|
  Goal.create(match: match, team: real_madrid)  
end
