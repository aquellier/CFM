puts "Creating bookings..."
100.times do |number|
  booking = Booking.new({
    game_id:            rand(1..20),
    user_id:            rand(1..50)
  })
  booking.save! if booking.valid?
end
puts "Created #{Booking.count} bookings!"
