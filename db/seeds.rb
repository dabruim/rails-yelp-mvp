# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts 'Creating restaurants...'
italian = { name: "Vulcano", address: "Paris, 14ème", category: "italian" }
chinese = { name: "Nems Party", address: "Paris, 13ème", category: "chinese" }
japanese = { name: "Sushi Folie ", address: "Paris, 15ème", category: "japanese" }
french = { name: "A la bonne fourchette", address: "Paris, 19ème", category: "french" }
belgian = { name: "Tintin", address: "Bruxelles", category: "belgian" }

[italian, chinese, japanese, french, belgian].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts 'Finished!'
