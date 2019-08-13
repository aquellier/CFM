puts 'Creating games...'
(Date.today..Date.today + 14).each_with_index do |day, index|
  case day.strftime("%a")
  when "Mon"
    Game.create!({
      field_id:          index + 1,
      datetime:          day.strftime("%a %d %b %Y 18:00"),
      number_of_players: 10,
      price:             14.5,
      creator_id:        rand(1...100)
    })
  when "Tue"
    Game.create!({
      field_id:          index + 1,
      datetime:          day.strftime("%a %d %b %Y 18:00"),
      number_of_players: 10,
      price:             16,
      creator_id:        rand(1...100)
    })
  when "Wed"
    Game.create!({
      field_id:          index + 1,
      datetime:          day.strftime("%a %d %b %Y 18:00"),
      number_of_players: 14,
      price:             12,
      creator_id:        rand(1...100)
    })
    Game.create!({
      field_id:          index + 1,
      datetime:          day.strftime("%a %d %b %Y 18:00"),
      number_of_players: 14,
      price:             10,
      creator_id:        rand(1...100)
    })
  when "Thu"
    Game.create!({
      field_id:          index + 1,
      datetime:          day.strftime("%a %d %b %Y 18:00"),
      number_of_players: 10,
      price:             10,
      creator_id:        rand(1...100)
    })
    Game.create!({
      field_id:          index + 1,
      datetime:          day.strftime("%a %d %b %Y 18:00"),
      number_of_players: 14,
      price:             15.5,
      creator_id:        rand(1...100)
    })
  when "Fri"
    Game.create!({
      field_id:          index + 1,
      datetime:          day.strftime("%a %d %b %Y 18:00"),
      number_of_players: 14,
      price:             10,
      creator_id:        rand(1...100)
    })
  when "Sat"
    Game.create!({
      field_id:          index + 1,
      datetime:          day.strftime("%a %d %b %Y 18:00"),
      number_of_players: 14,
      price:             8,
      creator_id:        rand(1...100)
    })
    Game.create!({
      field_id:          index + 1,
      datetime:          day.strftime("%a %d %b %Y 18:00"),
      number_of_players: 10,
      price:             12,
      creator_id:        rand(1...100)
    })
  when "Sun"
    Game.create!({
      field_id:          index + 1,
      datetime:          day.strftime("%a %d %b %Y 18:00"),
      number_of_players: 10,
      price:             14,
      creator_id:        rand(1...100)
    })
  end
end

puts "Created #{Game.count} games!"
