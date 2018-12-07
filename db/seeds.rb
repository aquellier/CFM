# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

puts 'Cleaning database...'
Game.destroy_all

puts 'Creating fields...'
fields_attributes = [
  {
    name:"UrbanSoccer - Angers",
    location: "UrbanSoccer - Angers"
  },
  {
    name:"UrbanSoccer - Asnières",
    location: "UrbanSoccer - Asnières"
  },
  {
    name:"UrbanSoccer - Bordeaux Mérignac",
    location: "UrbanSoccer - Bordeaux Mérignac"
  },
  {
    name:"UrbanSoccer - Bordeaux Pessac",
    location: "UrbanSoccer - Bordeaux Pessac"
  },
  {
    name:"UrbanSoccer - Clermont Ferranc",
    location: "UrbanSoccer - Clermont Ferranc"
  },
  {
    name:"UrbanSoccer - Dijon",
    location: "UrbanSoccer - Dijon"
  },
  {
    name:"UrbanSoccer - Every Courcouronnes",
    location: "UrbanSoccer - Every Courcouronnes"
  },
  {
    name:"UrbanSoccer - Grenoble",
    location: "UrbanSoccer - Grenoble"
  },
  {
    name:"UrbanSoccer - Guyancourt",
    location: "UrbanSoccer - Guyancourt"
  },
  {
    name:"UrbanSoccer - La Défense",
    location: "UrbanSoccer - La Défense"
  },
  {
    name:"UrbanSoccer - Lille Bondues",
    location: "UrbanSoccer - Lille Bondues"
  },
  {
    name:"UrbanSoccer - Lille Lezennes",
    location: "UrbanSoccer - Lille Lezennes"
  },
  {
    name:"UrbanSoccer - Lyon Barolles",
    location: "UrbanSoccer - Lyon Barolles"
  },
  {
    name:"UrbanSoccer - Lyon Beynost",
    location: "UrbanSoccer - Lyon Beynost"
  },
  {
    name:"UrbanSoccer - Lyon Parilly",
    location: "UrbanSoccer - Lyon Parilly"
  },
  {
    name:"UrbanSoccer - Marne la Vallée",
    location: "UrbanSoccer - Marne la Vallée"
  },
  {
    name:"UrbanSoccer - Meudon",
    location: "UrbanSoccer - Meudon"
  },
  {
    name:"UrbanSoccer - Montpellier",
    location: "UrbanSoccer - Montpellier"
  },
  {
    name:"UrbanSoccer - Nantes",
    location: "UrbanSoccer - Nantes"
  },
  {
    name:"UrbanSoccer - Orsay",
    location: "UrbanSoccer - Orsay"
  },
  {
    name:"UrbanSoccer - Porte d'Aubervilliers",
    location: "UrbanSoccer - Porte d'Aubervilliers"
  },
  {
    name:"UrbanSoccer - Porte d'Ivry",
    location: "UrbanSoccer - Porte d'Ivry"
  },
  {
    name:"UrbanSoccer - Puteaux",
    location: "UrbanSoccer - Puteaux"
  },
  {
    name:"UrbanSoccer - Rennes Cap Malo",
    location: "UrbanSoccer - Rennes Cap Malo"
  },
  {
    name:"UrbanSoccer - Rennes Vern",
    location: "UrbanSoccer - Rennes Vern"
  },
  {
    name:"UrbanSoccer - Saint Étienne",
    location: "UrbanSoccer - Saint Étienne"
  },
  {
    name:"UrbanSoccer - Strasbourg",
    location: "UrbanSoccer - Strasbourg"
  },
  {
    name:"UrbanSoccer - Toulouse Montaudran",
    location: "UrbanSoccer - Toulouse Montaudran"
  },
  {
    name:"UrbanSoccer - Toulouse Sept Deniers",
    location: "UrbanSoccer - Toulouse Sept Deniers"
  },
  {
    name:"UrbanSoccer - Villeneuve Loubet",
    location: "UrbanSoccer - Villeneuve Loubet"
  }
]
Field.create!(fields_attributes)
puts "Created #{Field.count} fields!"

puts "Creating users..."

users_attributes = [
  {
    first_name: "Christan",
    last_name: "Ronalde",
    email: "christian.ronalde@gmail.com",
    password: "crazyfootball",
    nationality: "portuguese",
    date_of_birth: "20/09/1986",
    position: "attacker",
    photo_fake: "https://inspirationseek.com/wp-content/uploads/2014/06/Cristiano-Ronaldo-Portugal-Hairstyle-2013.jpg",
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
    photo_fake: "https://i.f1g.fr/media/figaro/805x453_crop/2017/10/25/XVMec083c12-b965-11e7-8bd2-4d87b82d3252.jpg",
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
    photo_fake: "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c8/20180610_FIFA_Friendly_Match_Austria_vs._Brazil_Thiago_Silva_850_1582.jpg/280px-20180610_FIFA_Friendly_Match_Austria_vs._Brazil_Thiago_Silva_850_1582.jpg",
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
    photo_fake: "https://s.yimg.com/ny/api/res/1.2/PT6wwkyQEZZYc1HiERKjhg--~A/YXBwaWQ9aGlnaGxhbmRlcjtzbT0xO3c9ODAw/http://media.zenfs.com/fr-FR/homerun/fr.article.90minutes.com/04d4f122fda1b69c46f77d88cfa23fc7",
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
    photo_fake: "https://upload.wikimedia.org/wikipedia/commons/thumb/1/10/20180602_FIFA_Friendly_Match_Austria_vs._Germany_Manuel_Neuer_850_0723.jpg/250px-20180602_FIFA_Friendly_Match_Austria_vs._Germany_Manuel_Neuer_850_0723.jpg",
    size: 178,
    weight: 76,
    phone_number: "+336000000000"
  }

]

# Game.create!(games_attributes)
User.create!(users_attributes)

puts 'Creating games...'

(Date.today..Date.today + 14).each do |day|
  case day.strftime("%a")
  when "Mon"
    field = Field.find(rand(fields_attributes.length))
    Game.create!({
      datetime:          day.strftime("%a %d %b %Y 18:00"),
      location:          field.location,
      number_of_players: 10,
      price:             14.5,
      creator:           User.find(1)
    })
  when "Tue"
    field = Field.find(rand(fields_attributes.length))
    Game.create!({
      datetime:          day.strftime("%a %d %b %Y 18:00"),
      location:          Field.find(2).location,
      number_of_players: 10,
      price:             16,
      creator:           User.find(4)
    })
  when "Wed"
    field = Field.find(rand(fields_attributes.length))
    Game.create!({
      datetime:          day.strftime("%a %d %b %Y 18:00"),
      location:          field.location,
      number_of_players: 14,
      price:             12,
      creator:           User.find(2)
    })
    Game.create!({
      datetime:          day.strftime("%a %d %b %Y 18:00"),
      location:          field.location,
      number_of_players: 14,
      price:             10,
      creator:           User.find(3)
    })
  when "Thu"
    field = Field.find(rand(fields_attributes.length))
    Game.create!({
      datetime:          day.strftime("%a %d %b %Y 18:00"),
      location:          field.location,
      number_of_players: 10,
      price:             10,
      creator:           User.find(5)
    })
    Game.create!({
      datetime:          day.strftime("%a %d %b %Y 18:00"),
      location:          field.location,
      number_of_players: 14,
      price:             15.5,
      creator:           User.find(1)
    })
  when "Fri"
    field = Field.find(rand(fields_attributes.length))
    Game.create!({
      datetime:          day.strftime("%a %d %b %Y 18:00"),
      location:          field.location,
      number_of_players: 14,
      price:             10,
      creator:           User.find(2)
    })
  when "Sat"
    field = Field.find(rand(fields_attributes.length))
    Game.create!({
      datetime:          day.strftime("%a %d %b %Y 18:00"),
      location:          field.location,
      number_of_players: 14,
      price:             8,
      creator:           User.find(3)
    })
    Game.create!({
      datetime:          day.strftime("%a %d %b %Y 18:00"),
      location:          field.location,
      number_of_players: 10,
      price:             12,
      creator:           User.find(5)
    })
  when "Sun"
    field = Field.find(rand(fields_attributes.length))
    Game.create!({
      datetime:          day.strftime("%a %d %b %Y 18:00"),
      location:          field.location,
      number_of_players: 10,
      price:             14,
      creator:           User.find(1)
    })
  end
end

puts "Created #{Game.count} games!"


puts 'Seeding finished'
