puts "Creating users..."
50.times do |n|
  first_name = Faker::Name.male_first_name
  User.create!(
    first_name: first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email(name: first_name),
    password: "crazyfootball",
    nationality: Faker::Nation.nationality,
    date_of_birth: Faker::Date.birthday(min_age: 18, max_age: 65),
    position: User::POSITIONS.sample,
    photo_fake: "https://randomuser.me/api/portraits/med/men/#{n}.jpg",
    size: rand(165..190),
    weight: rand(60..90),
    phone_number: Faker::PhoneNumber.phone_number_with_country_code
  )
end

50.times do |n|
  first_name = Faker::Name.female_first_name
  User.create!(
    first_name: first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email(name: first_name),
    password: "crazyfootball",
    nationality: Faker::Nation.nationality,
    date_of_birth: Faker::Date.birthday(min_age: 18, max_age: 65),
    position: User::POSITIONS.sample,
    photo_fake: "https://randomuser.me/api/portraits/med/women/#{n}.jpg",
    size: rand(150..175),
    weight: rand(45..70),
    phone_number: Faker::PhoneNumber.phone_number_with_country_code
  )
end
