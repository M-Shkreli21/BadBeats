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

User.create(first_name: "Test", last_name: "User", username: "TestUser1", email: "Test@test.com", password: "password", following: 0, followers: 0)

Post.create(post_body: "Jokic misses go ahead bucket because of a missed call", user_id: 1, likes: 0, sports_id: 1)
Post.create(post_body: "Open net goal killed the under in the final 10 seconds", user_id: 1, likes: 0, sports_id: 2)
Post.create(post_body: "Pitch to the inside called ball and Cole got pulled ruining his O/U", user_id: 1, likes: 0, sports_id: 3)
Post.create(post_body: "Tannehil rushing prop got ruined because he kneeled twice", user_id: 1, likes: 0, sports_id: 4)
Post.create(post_body: "VAR messed up my Haaland goal score prop", user_id: 1, likes: 0, sports_id: 5)
Post.create(post_body: "El Clasico match last week", user_id: 1, likes: 0, sports_id: 6)
Post.create(post_body: "Inter missing game winning goal because of missed penalty", user_id: 1, likes: 0, sports_id: 7)
Post.create(post_body: "Dortmund lost on a last minute handball penalty kick", user_id: 1, likes: 0, sports_id: 8)
Post.create(post_body: "March Madness as a whole", user_id: 1, likes: 0, sports_id: 9)
Post.create(post_body: "Georgia throwing an INT instead of dumping it out of bounds", user_id: 1, likes: 0, sports_id: 10)

puts "Seeding Complete"