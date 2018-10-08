# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Game.destroy_all

puts 'Creating games...'
restaurants_attributes = [
  {
    date:         'Dishoom',
    address:      'Campo Pequeno',
    price:  4,
    numbers_of_players:        16
  },
  {
    date:         'Pizza East',
    address:      'Olaias',
    price:  5,
    numbers_of_players:        16
  }
]
Game.create!(restaurants_attributes)
puts 'Finished!'
