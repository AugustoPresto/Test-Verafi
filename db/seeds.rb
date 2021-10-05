# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Creating admin user..."
admin = User.create(email: "admin@test.com", password: "abc123")
puts "Admin ready!"

puts "Creating statuses..."
server_status1 = ServerStatus.create(status: "UP", message: "Server is working")
sleep(1)
server_status2 = ServerStatus.create(status: "DOWN", message: "Server down because of Facebook")
sleep(1)
server_status3 = ServerStatus.create(status: "DOWN", message: "Deactivated for maintenance")
sleep(1)
server_status4 = ServerStatus.create(status: "UP", message: "Back to work")
sleep(1)
server_status6 = ServerStatus.create(status: "DOWN", message:"Nightime backup")
sleep(1)
server_status5 = ServerStatus.create(status: "UP", message: "Backup complete")

puts "Statuses done!"
