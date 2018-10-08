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
    date:         "2018-10-12 18:45:00",
    location:      'Campo Pequeno',
    number_of_players:        16,
    photo: "http://www.campopequeno.com/docs/images/crop/20160118145018498041.jpg"
  },
  {
    date:         "2018-10-12 18:45:00",
    location:      'R. Olivença 1585, 1900-379 Lisboa',
    number_of_players:        16,
    photo: "https://lh-i.global.ssl.fastly.net/images/holidays/db340a75354d2365859548be347f0f0fefa03019/portugal/lisbon/olaias-park-hotel-0.jpg?width=720&auto=webp&fit=crop&height=387"
  },
  {
    date:         "2018-10-14 18:45:00",
    location:      'Praça de Espanha',
    number_of_players:        16,
    photo: "https://mediaserver2.rr.pt/newrr/praca_de_espanha_foto_dr6678053d.jpg"
  },
  {
    date:         "2018-10-15 18:45:00",
    location:      'Anjos',
    number_of_players:        16,
    photo: "https://www.lx-prestige.fr/wp-content/uploads/2015/07/fiche-quartier-anjos-intendente-lisbonne-portugal-5-845x675.jpg"
  }
]
Game.create!(restaurants_attributes)
puts 'Finished!'
