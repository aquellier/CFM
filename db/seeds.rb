# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Game.destroy_all

puts 'Creating games and users...'
games_attributes = [
  {
    date:         "2018-10-12",
    time:         "18:45:00",
    location:      "Campo Pequeno",
    metro_station:  "Campo Pequeno",
    number_of_players:        16,
    photo: "http://www.campopequeno.com/docs/images/crop/20160118145018498041.jpg"
  },
  {
    date:         "2018-10-12",
    time:         "18:45:00",
    location:      "R. Olivença 1585, 1900-379 Lisboa",
    metro_station: "Olaias",
    number_of_players:        16,
    photo: "https://lh-i.global.ssl.fastly.net/images/holidays/db340a75354d2365859548be347f0f0fefa03019/portugal/lisbon/olaias-park-hotel-0.jpg?width=720&auto=webp&fit=crop&height=387"
  },
  {
    date:         "2018-10-14",
    time:         "18:45:00",
    location:      "Praça de Espanha",
    metro_station: "Praça de Espanha",
    number_of_players:        16,
    photo: "https://mediaserver2.rr.pt/newrr/praca_de_espanha_foto_dr6678053d.jpg"
  },
  {
    date:         "2018-10-15",
    time:         "18:45:00",
    location:      "Anjos",
    metro_station: "Anjos",
    number_of_players:        16,
    photo: "https://www.lx-prestige.fr/wp-content/uploads/2015/07/fiche-quartier-anjos-intendente-lisbonne-portugal-5-845x675.jpg"
  }
]

users_attributes = [
  {
    first_name: "Christan",
    last_name: "Ronalde",
    email: "christian.ronalde@gmail.com",
    password: "crazyfootball",
    nationality: "portuguese",
    date_of_birth: "20/09/1986",
    position: "attacker",
    photo: "7918959_cb54c8e...3bbca-1_1000x625",
    size: 178,
    weight: 76,
    phone_number: "+336000000000"
  },
  {
    first_name: "Leo",
    last_name: "Messaround",
    email: "leo.messaround@gmail.com",
    password: "crazyfootball",
    nationality: "argentinian",
    date_of_birth: "20/10/1988",
    position: "attacker",
    photo: "lionel-messi-ba...33u18x5tg5m8enm8",
    size: 178,
    weight: 76,
    phone_number: "+336000000000"
  },
  {
    first_name: "Thiagu",
    last_name: "Sylvester",
    email: "thiagu.sylvester@gmail.com",
    password: "crazyfootball",
    nationality: "brazilian",
    date_of_birth: "10/06/1985",
    position: "defender",
    photo: "29241-1462893880",
    size: 178,
    weight: 76,
    phone_number: "+336000000000"
  },
  {
    first_name: "N'golo",
    last_name: "Kant",
    email: "ngolo.kant@gmail.com",
    password: "crazyfootball",
    nationality: "french",
    date_of_birth: "20/11/1991",
    position: "midfielder",
    photo: "https://pbs.twimg.com/profile_images/1019597917806526464/-ks541OM_400x400.jpg",
    size: 178,
    weight: 76,
    phone_number: "+336000000000"
  },
  {
    first_name: "Manu",
    last_name: "Neuart",
    email: "manu.neuart@gmail.com",
    password: "crazyfootball",
    nationality: "german",
    date_of_birth: "15/04/1986",
    position: "goalkeeper",
    photo: "250px-20180602_...l_Neuer_850_0723",
    size: 178,
    weight: 76,
    phone_number: "+336000000000"
  }
]

Game.create!(games_attributes)
User.create!(users_attributes)
puts 'Finished!'
