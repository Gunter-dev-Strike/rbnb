# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# un utilisateur a un bin a loué
# un veut louer un bien
# un en a un à louer et veut en louer un
Booking.destroy_all
Place.destroy_all
User.destroy_all


user1 = User.create!(username: 'Luke', email: 'toto@toto.com', password: 'Petaouchnok' )
user2 = User.create!(username: 'Lake', email: 'tata@tata.com', password: 'Petaouchnok' )
user3 = User.create!(username: 'Like', email: 'titi@titi.com', password: 'Petaouchnok' )


# booking1 = Booking.create!(user: user1, date: '22/02/2022', place: place3)
# booking2 = Booking.create!(user: user3, date: '02/02/2020', place: place1)
# User.all.each do |user|
#   p user.username
#   end
