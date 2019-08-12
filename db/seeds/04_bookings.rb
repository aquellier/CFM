puts "Creating bookings..."
100.times do |number|
  Booking.create!({
    game_id:            number / 10 + 1,
    user_id:            number + 1
  })
end
puts "Created #{Booking.count} bookings!"
