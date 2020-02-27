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

place1 = Place.create!(category: 'industriel', name: "Ancien canut dans les pentes", description: "Blablablablablabla", city: 'Lyon', owner: user1, price: 100, address: '15 rue Burdeau, 69001 Lyon', options: ["Restauration", "Groupe Electro", "Autorisations", "Ménage", "Fumeur", "Wifi", "WC", "Accessibilité Handicapé"])
place2 = Place.create!(category: 'habitation', name: "Loft à Montmartre", description: "Blablablablablabla", city: 'Paris', owner: user1, price: 100, address: '12 Rue Cortot, 75018 Paris', options: ["Restauration", "Groupe Electro", "Autorisations", "Ménage", "Fumeur", "Wifi", "WC", "Accessibilité Handicapé"])
place3 = Place.create!(category: 'culturel', name: "Théâtre Nô", description: "Blablablablablabla", city: 'Lyon', owner: user2, price: 100, address: '4 Rue Charles Dullin, 69002 Lyon', options: ["Restauration", "Groupe Electro", "Autorisations", "Ménage", "Fumeur", "Wifi", "WC", "Accessibilité Handicapé"])
place4 = Place.create!(category: 'exterieur', name: "Jardin des plantes", description: "Blablablablablabla", city: 'Lyon', owner: user1, price: 100, address: '73 Montée de la Grande-Côte, 69001 Lyon', options: ["Restauration", "Groupe Electro", "Autorisations", "Ménage", "Fumeur", "Wifi", "WC", "Accessibilité Handicapé"])
place5 = Place.create!(category: 'industriel', name: "Weirdo Space", description: "Blablablablablabla", city: 'Lyon', owner: user1, price: 100, address: '86 Quai Perrache, 69002 Lyon', options: ["Restauration", "Groupe Electro", "Autorisations", "Ménage", "Fumeur", "Wifi", "WC", "Accessibilité Handicapé"])
place6 = Place.create!(category: 'habitation', name: "Maison de campagne", description: "Blablablablablabla", city: 'Paris', owner: user1, price: 100, address: '14 Rue Dr Edmond Locard, 69005 Lyon', options: ["Restauration", "Groupe Electro", "Autorisations", "Ménage", "Fumeur", "Wifi", "WC", "Accessibilité Handicapé"])


booking1 = Booking.create!(user: user1, date: '22/02/2022', place: place3)
booking2 = Booking.create!(user: user3, date: '02/02/2020', place: place1)
# User.all.each do |user|
#   p user.username
#   end



