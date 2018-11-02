# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

puts 'Cleaning database...'
Game.destroy_all

puts 'Creating games and users...'


#     Campo Pequeno = "http://www.campopequeno.com/docs/images/crop/20160118145018498041.jpg"
#     Olaias = "https://lh-i.global.ssl.fastly.net/images/holidays/db340a75354d2365859548be347f0f0fefa03019/portugal/lisbon/olaias-park-hotel-0.jpg?width=720&auto=webp&fit=crop&height=387"
#     Praça da Espanha = "https://mediaserver2.rr.pt/newrr/praca_de_espanha_foto_dr6678053d.jpg"
#     Anjos = "https://www.lx-prestige.fr/wp-content/uploads/2015/07/fiche-quartier-anjos-intendente-lisbonne-portugal-5-845x675.jpg"

# Timetable:
# Monday 20h 7vs7 Olaias
# Tuesday 21h 7vs7 Olaias
# Wednesday 20h 7vs7 Olaias
# Wednesday 21h 6vs6 Praça de Espanha
# Thursday 19h and 20h 6vs6 Praca de Espanha
# Friday 21h 7vs7 Olaias
# Saturday 11h e 19h 7vs7 Olaias
# Sunday 19h 7vs7 Olaias
games_attributes = []
(Date.today..Date.today + 365).each do |day|
  case day.strftime("%a")
  when "Mon"
    Game.create!({
      date:           day.strftime("%a %d %b %Y"),
      time:           "20:00:00",
      location:       "R. Olivença 1585, 1900-379 Lisboa",
      metro_station:  "Olaias",
      photo:          "https://lh-i.global.ssl.fastly.net/images/holidays/db340a75354d2365859548be347f0f0fefa03019/portugal/lisbon/olaias-park-hotel-0.jpg?width=720&auto=webp&fit=crop&height=387",
      number_of_players:        16,
      price_cents:          400
    })
  when "Tue"
    Game.create!({
      date:           day.strftime("%a %d %b %Y"),
      time:           "21:00:00",
      location:       "R. Olivença 1585, 1900-379 Lisboa",
      metro_station:  "Olaias",
      photo:          "https://lh-i.global.ssl.fastly.net/images/holidays/db340a75354d2365859548be347f0f0fefa03019/portugal/lisbon/olaias-park-hotel-0.jpg?width=720&auto=webp&fit=crop&height=387",
      number_of_players:        16,
      price_cents:          400
    })
  when "Wed"
    Game.create!({
      date:           day.strftime("%a %d %b %Y"),
      time:           "20:00:00",
      location:       "R. Olivença 1585, 1900-379 Lisboa",
      metro_station:  "Olaias",
      photo:          "https://lh-i.global.ssl.fastly.net/images/holidays/db340a75354d2365859548be347f0f0fefa03019/portugal/lisbon/olaias-park-hotel-0.jpg?width=720&auto=webp&fit=crop&height=387",
      number_of_players:        16,
      price_cents:          400
    })
    Game.create!({
      date:           day.strftime("%a %d %b %Y"),
      time:           "21:00:00",
      location:       "R. Olivença 1585, 1900-379 Lisboa",
      metro_station:  "Praça de Espanha",
      photo:          "https://mediaserver2.rr.pt/newrr/praca_de_espanha_foto_dr6678053d.jpg",
      number_of_players:        16,
      price_cents:          400
    })
  when "Thu"
    Game.create!({
      date:           day.strftime("%a %d %b %Y"),
      time:           "19:00:00",
      location:       "R. Olivença 1585, 1900-379 Lisboa",
      metro_station:  "Praça de Espanha",
      photo:          "https://mediaserver2.rr.pt/newrr/praca_de_espanha_foto_dr6678053d.jpg",
      number_of_players:        16,
      price_cents:          400
    })
    Game.create!({
      date:           day.strftime("%a %d %b %Y"),
      time:           "20:00:00",
      location:       "R. Olivença 1585, 1900-379 Lisboa",
      metro_station:  "Praça de Espanha",
      photo:          "https://mediaserver2.rr.pt/newrr/praca_de_espanha_foto_dr6678053d.jpg",
      number_of_players:        16,
      price_cents:          400
    })
  when "Fri"
    Game.create!({
      date:           day.strftime("%a %d %b %Y"),
      time:           "21:00:00",
      location:       "R. Olivença 1585, 1900-379 Lisboa",
      metro_station:  "Olaias",
      photo:          "https://lh-i.global.ssl.fastly.net/images/holidays/db340a75354d2365859548be347f0f0fefa03019/portugal/lisbon/olaias-park-hotel-0.jpg?width=720&auto=webp&fit=crop&height=387",
      number_of_players:        16,
      price_cents:          400
    })
  when "Sat"
    Game.create!({
      date:           day.strftime("%a %d %b %Y"),
      time:           "11:00:00",
      location:       "R. Olivença 1585, 1900-379 Lisboa",
      metro_station:  "Praça de Espanha",
      photo:          "https://mediaserver2.rr.pt/newrr/praca_de_espanha_foto_dr6678053d.jpg",
      number_of_players:        16,
      price_cents:          400
    })
    Game.create!({
      date:           day.strftime("%a %d %b %Y"),
      time:           "19:00:00",
      location:       "R. Olivença 1585, 1900-379 Lisboa",
      metro_station:  "Praça de Espanha",
      photo:          "https://mediaserver2.rr.pt/newrr/praca_de_espanha_foto_dr6678053d.jpg",
      number_of_players:        16,
      price_cents:          400
    })
  when "Sun"
    Game.create!({
      date:           day.strftime("%a %d %b %Y"),
      time:           "19:00:00",
      location:       "R. Olivença 1585, 1900-379 Lisboa",
      metro_station:  "Olaias",
      photo:          "https://lh-i.global.ssl.fastly.net/images/holidays/db340a75354d2365859548be347f0f0fefa03019/portugal/lisbon/olaias-park-hotel-0.jpg?width=720&auto=webp&fit=crop&height=387",
      number_of_players:        16,
      price_cents:          400
    })
  end
end


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

# Game.create!(games_attributes)
User.create!(users_attributes)
puts 'Finished!'
