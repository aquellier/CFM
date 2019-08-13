# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

puts 'Cleaning database...'
Booking.destroy_all
Game.destroy_all
User.destroy_all
Field.destroy_all
puts 'Database cleaned'

Dir[File.join(Rails.root, 'db', 'seeds', '*.rb')].sort.each { |seed| load seed }
puts 'Seeding finished'
