# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
tante_charlotte = {name: "Tante Charlotte", address: "Quartier St Pierre, Bordeaux", category: "french"}
escale_des_pirates =  {name: "Escale des Pirates", address: "Proche aéroport, Mérignac", category: "japanese"}
entrecote = {name: "Entrecote", address: "Place Tourny, Bordeaux", category: "belgian"}
bistrot_regent = {name: "Bistrot Régent", address: "Avenue Aquitaine, Ste Eulalie", category: "italian"}
sushi_shop = {name: "Sushi Shop", address: "Cours St Louis, Bordeaux", category: "chinese"}

[tante_charlotte, escale_des_pirates, entrecote, bistrot_regent,sushi_shop].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
