# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

puts 'Cleaning database...'
Game.destroy_all

puts 'Creating fields...'
fields_attributes = [
  {
    name:"UrbanSoccer - Angers",
    location: "UrbanSoccer - Angers, Avenue du Général Patton, Angers, France"
  },
  {
    name:"UrbanSoccer - Asnières",
    location: "UrbanSoccer, Rue Henri Vuillemin, Gennevilliers, France"
  },
  {
    name:"UrbanSoccer - Bordeaux Mérignac",
    location: "UrbanSoccer - Bordeaux Mérignac, Rue Archimède, Mérignac, France"
  },
  {
    name:"UrbanSoccer - Bordeaux Pessac",
    location: "UrbanSoccer Bordeaux Pessac, Avenue Louis de Broglie, Pessac, France"
  },
  {
    name:"UrbanSoccer - Clermont Ferranc",
    location: "UrbanSoccer - Clermont Ferrand, Rue des Varennes, Aubière, France"
  },
  {
    name:"UrbanSoccer - Dijon",
    location: "UrbanSoccer - Dijon, Rue de Cracovie, Saint-Apollinaire, France"
  },
  {
    name:"UrbanSoccer - Every Courcouronnes",
    location: "UrbanSoccer - Evry, Avenue du Bois de l'Épine, Courcouronnes, France"
  },
  {
    name:"UrbanSoccer - Grenoble",
    location: "UrbanSoccer - Grenoble"
  },
  {
    name:"UrbanSoccer - Guyancourt",
    location: "UrbanSoccer - Grenoble, Boulevard des Alpes, Meylan, France"
  },
  {
    name:"UrbanSoccer - La Défense",
    location: "UrbanSoccer - La Défense, Avenue François Arago, Nanterre, France"
  },
  {
    name:"UrbanSoccer - Lille Bondues",
    location: "UrbanSoccer - Lille Bondues, Chemin des Grands Obeaux, Bondues, France"
  },
  {
    name:"UrbanSoccer - Lille Lezennes",
    location: "UrbanSoccer - Lille Lezennes, Rue Paul Langevin Zone Industrielle du Hellu, Lezennes, France"
  },
  {
    name:"UrbanSoccer - Lyon Barolles",
    location: "UrbanSoccer - Lyon Barolles, Chemin de Sacuny, Brignais, France"
  },
  {
    name:"UrbanSoccer - Lyon Beynost",
    location: "UrbanSoccer - Lyon Beynost, Allée du Pré Caillat, Beynost, France"
  },
  {
    name:"UrbanSoccer - Lyon Parilly",
    location: "UrbanSoccer - Lyon Parilly, Rue Jean Zay, Saint-Priest, France"
  },
  {
    name:"UrbanSoccer - Marne la Vallée",
    location: "UrbanSoccer - Marne la Vallée, Rue de la Maison Rouge, Lognes, France"
  },
  {
    name:"UrbanSoccer - Meudon",
    location: "UrbanSoccer Meudon, Route Forestière de la Mare Adam, Meudon, France"
  },
  {
    name:"UrbanSoccer - Montpellier",
    location: "UrbanSoccer - Montpellier, Avenue Marcel Dassault, Castelnau-le-Lez, France"
  },
  {
    name:"UrbanSoccer - Nantes",
    location: "UrbanSoccer - Nantes, Route de Clisson, Saint-Sébastien-sur-Loire, France"
  },
  {
    name:"UrbanSoccer - Orsay",
    location: "UrbanSoccer - Orsay, Rue Nicolas Appert, Orsay, France"
  },
  {
    name:"UrbanSoccer - Porte d'Aubervilliers",
    location: "UrbanSoccer - Porte d'Aubervilliers, Avenue Victor Hugo, Aubervilliers, France"
  },
  {
    name:"UrbanSoccer - Porte d'Ivry",
    location: "UrbanSoccer - Porte d'Ivry, Rue Jules Vanzuppe, Ivry-sur-Seine, France"
  },
  {
    name:"UrbanSoccer - Puteaux",
    location: "UrbanSoccer - Puteaux, Rue de la République, Puteaux, France"
  },
  {
    name:"UrbanSoccer - Rennes Cap Malo",
    location: "UrbanSoccer - Rennes Cap Malo, Avenue du Phare du Grand Lejeon, Melesse, France"
  },
  {
    name:"UrbanSoccer - Rennes Vern",
    location: "UrbanSoccer Rennes Vern, Rue de Chantepie, Vern-sur-Seiche, France"
  },
  {
    name:"UrbanSoccer - Saint Étienne",
    location: "UrbanSoccer - Saint Etienne, Allée Jean Lauer, Saint-Étienne, France"
  },
  {
    name:"UrbanSoccer - Strasbourg",
    location: "UrbanSoccer - Strasbourg, Chemin Haut, Strasbourg, France"
  },
  {
    name:"UrbanSoccer - Toulouse Montaudran",
    location: "UrbanSoccer - Toulouse Montaudran, Chemin Carrosse, Toulouse, France"
  },
  {
    name:"UrbanSoccer - Toulouse Sept Deniers",
    location: "UrbanSoccer - Toulouse Sept Deniers, Rue de l'Egalite, Toulouse, France"
  },
  {
    name:"UrbanSoccer - Villeneuve Loubet",
    location: "UrbanSoccer - Villeneuve Loubet, Route de Grasse, Villeneuve-Loubet, France"
  }
]
Field.create!(fields_attributes)
puts "Created #{Field.count} fields!"

puts "Creating users..."

users_attributes = [
  {
    first_name: "Christiano",
    last_name: "Ronalde",
    email: "christian.ronalde@gmail.com",
    password: "crazyfootball",
    nationality: "portuguese",
    date_of_birth: "20/09/1986",
    position: "attacker",
    photo_fake: "https://data.pixiz.com/output/user/frame/preview/400x400/6/8/3/0/1620386_c15fd.jpg",
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
    photo_fake: "https://marriedwiki.com/uploads/bio/lionel-messi.jpg",
    size: 178,
    weight: 76,
    phone_number: "+336000000000"
  },
  {
    first_name: "Thiago",
    last_name: "Sylvester",
    email: "thiagu.sylvester@gmail.com",
    password: "crazyfootball",
    nationality: "brazilian",
    date_of_birth: "10/06/1985",
    position: "defender",
    photo_fake: "https://marriedwiki.com/uploads/bio/thiago-silva.jpg",
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
    photo_fake: "https://pbs.twimg.com/profile_images/1019597917806526464/-ks541OM_400x400.jpg",
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
    photo_fake: "http://www.lataille.fr/wp-content/uploads/2017/02/Manuel-Neuer.jpg",
    size: 178,
    weight: 76,
    phone_number: "+336000000000"
  },
  {
    first_name: "Eden",
    last_name: "Hazardous",
    email: "eden.hazardous@gmail.com",
    password: "crazyfootball",
    nationality: "belgia,",
    date_of_birth: "15/04/1992",
    position: "attacker",
    photo_fake: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQyayMeRHHvGUeuT6rDb1bCDdJj1lZb6XN7aCM_mfPM4NEOWwLe",
    size: 178,
    weight: 76,
    phone_number: "+336000000000"
  },
  {
    first_name: "Kiki",
    last_name: "Mbappou",
    email: "kiki.mbappou@gmail.com",
    password: "crazyfootball",
    nationality: "french",
    date_of_birth: "15/04/1998",
    position: "attacker",
    photo_fake: "http://snapchatdestar.fr/assets/img/snapchat/866.png",
    size: 180,
    weight: 75,
    phone_number: "+336000000000"
  },
  {
    first_name: "Neymar",
    last_name: "Cryingboy",
    email: "neymar.dasilva@gmail.com",
    password: "crazyfootball",
    nationality: "brazilian",
    date_of_birth: "15/04/1992",
    position: "goalkeeper",
    photo_fake: "http://www.lataille.fr/wp-content/uploads/2017/02/Manuel-Neuer.jpg",
    size: 178,
    weight: 76,
    phone_number: "+336000000000"
  },
  {
    first_name: "Raphaël",
    last_name: "Varan",
    email: "raphael.varan@gmail.com",
    password: "crazyfootball",
    nationality: "french",
    date_of_birth: "15/08/1992",
    position: "defender",
    photo_fake: "https://brandandcelebrities.com/wp-content/uploads/2018/02/Rapha%C3%ABl-VARANE.jpg",
    size: 185,
    weight: 78,
    phone_number: "+336000000000"
  },
  {
    first_name: "Sergio",
    last_name: "Ramoneur",
    email: "sergio.ramoneur@gmail.com",
    password: "crazyfootball",
    nationality: "Spanish",
    date_of_birth: "15/04/1985",
    position: "goalkeeper",
    photo_fake: "http://snapchatdestar.fr/assets/img/snapchat/855.png",
    size: 183,
    weight: 76,
    phone_number: "+336000000000"
  }

]

# Game.create!(games_attributes)
User.create!(users_attributes)

puts 'Creating games...'

(Date.today..Date.today + 14).each_with_index do |day, index|
  case day.strftime("%a")
  when "Mon"
    Game.create!({
      field_id:          index + 1,
      datetime:          day.strftime("%a %d %b %Y 18:00"),
      number_of_players: 10,
      price:             14.5,
      creator:           User.find(1)
    })
  when "Tue"
    Game.create!({
      field_id:          index + 1,
      datetime:          day.strftime("%a %d %b %Y 18:00"),
      number_of_players: 10,
      price:             16,
      creator:           User.find(4)
    })
  when "Wed"
    Game.create!({
      field_id:          index + 1,
      datetime:          day.strftime("%a %d %b %Y 18:00"),
      number_of_players: 14,
      price:             12,
      creator:           User.find(2)
    })
    Game.create!({
      field_id:          index + 1,
      datetime:          day.strftime("%a %d %b %Y 18:00"),
      number_of_players: 14,
      price:             10,
      creator:           User.find(3)
    })
  when "Thu"
    Game.create!({
      field_id:          index + 1,
      datetime:          day.strftime("%a %d %b %Y 18:00"),
      number_of_players: 10,
      price:             10,
      creator:           User.find(5)
    })
    Game.create!({
      field_id:          index + 1,
      datetime:          day.strftime("%a %d %b %Y 18:00"),
      number_of_players: 14,
      price:             15.5,
      creator:           User.find(1)
    })
  when "Fri"
    Game.create!({
      field_id:          index + 1,
      datetime:          day.strftime("%a %d %b %Y 18:00"),
      number_of_players: 14,
      price:             10,
      creator:           User.find(2)
    })
  when "Sat"
    Game.create!({
      field_id:          index + 1,
      datetime:          day.strftime("%a %d %b %Y 18:00"),
      number_of_players: 14,
      price:             8,
      creator:           User.find(3)
    })
    Game.create!({
      field_id:          index + 1,
      datetime:          day.strftime("%a %d %b %Y 18:00"),
      number_of_players: 10,
      price:             12,
      creator:           User.find(5)
    })
  when "Sun"
    Game.create!({
      field_id:          index + 1,
      datetime:          day.strftime("%a %d %b %Y 18:00"),
      number_of_players: 10,
      price:             14,
      creator:           User.find(1)
    })
  end
end

puts "Created #{Game.count} games!"

puts "Creating Bookings..."
100.times do |number|
  Booking.create!({
    game_id:            number / 10 + 1,
    user_id:            number / 10 + 1
  })
end
puts "Created #{Booking.count} bookings!"


puts 'Seeding finished'
