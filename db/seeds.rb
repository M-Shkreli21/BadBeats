# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Seeding..."

Sport.create(sport_name: "Basketball", league_name: "NBA")
Sport.create(sport_name: "Hockey", league_name: "NHL")
Sport.create(sport_name: "Baseball", league_name: "MLB")
Sport.create(sport_name: "Football", league_name: "NFL")
Sport.create(sport_name: "Soccer", league_name: "English Premier League")
Sport.create(sport_name: "Soccer", league_name: "La Liga")
Sport.create(sport_name: "Soccer", league_name: "Serie A")
Sport.create(sport_name: "Soccer", league_name: "Bundesliga")
Sport.create(sport_name: "Basketball", league_name: "NCAA Division I Basketball")
Sport.create(sport_name: "Football", league_name: "NCAA Division I Football")

puts "Seeding Complete"