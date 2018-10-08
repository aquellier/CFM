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
    date:         "2018-10-12 18:50:00",
    location:      'Campo Pequeno',
    number_of_players:        16
  },
  {
    date:         "2018-10-12 18:50:00",
    location:      'Olaias',
    number_of_players:        16
  },
  {
    date:         "2018-10-14 18:50:00",
    location:      'Praça de Espanha',
    number_of_players:        16
  },
  {
    date:         "2018-10-15 18:50:00",
    location:      'Anjos',
    number_of_players:        16
  }
]
Game.create!(restaurants_attributes)
puts 'Finished!'
