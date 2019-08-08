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
      creator:           User.find(2)
    })
  when "Wed"
    Game.create!({
      field_id:          index + 1,
      datetime:          day.strftime("%a %d %b %Y 18:00"),
      number_of_players: 14,
      price:             12,
      creator:           User.find(3)
    })
    Game.create!({
      field_id:          index + 1,
      datetime:          day.strftime("%a %d %b %Y 18:00"),
      number_of_players: 14,
      price:             10,
      creator:           User.find(4)
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
      creator:           User.find(6)
    })
  when "Fri"
    Game.create!({
      field_id:          index + 1,
      datetime:          day.strftime("%a %d %b %Y 18:00"),
      number_of_players: 14,
      price:             10,
      creator:           User.find(7)
    })
  when "Sat"
    Game.create!({
      field_id:          index + 1,
      datetime:          day.strftime("%a %d %b %Y 18:00"),
      number_of_players: 14,
      price:             8,
      creator:           User.find(8)
    })
    Game.create!({
      field_id:          index + 1,
      datetime:          day.strftime("%a %d %b %Y 18:00"),
      number_of_players: 10,
      price:             12,
      creator:           User.find(9)
    })
  when "Sun"
    Game.create!({
      field_id:          index + 1,
      datetime:          day.strftime("%a %d %b %Y 18:00"),
      number_of_players: 10,
      price:             14,
      creator:           User.find(10)
    })
  end
end

puts "Created #{Game.count} games!"
