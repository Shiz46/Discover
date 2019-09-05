# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# run rake db:seeds
    usr = User.create({:email => "guy@gmail.com", :password => "111111", :password_confirmation => "111111" })

  Place.create(user_id: usr.id, name: 'Calabash', description: 'Great Caribbean cuisine.', address: ' 428 Carrall St, Vancouver, BC V6A0A7')

  Place.create(user_id: usr.id , name: 'Trattoria', description: 'Great Caribbean cuisine.', address: ' 428 Carrall St, Vancouver, BC V6A0A7')

  Place.create(user_id: usr.id , name: 'Keg Steak House', description: 'Great Caribbean cuisine.', address: ' 428 Carrall St, Vancouver, BC V6A0A7')

  Place.create(user_id: usr.id , name: 'Richmond Night Market', description: 'Great Caribbean cuisine.', address: ' 428 Carrall St, Vancouver, BC V6A0A7')

  Place.create(user_id: usr.id , name: 'White Spot', description: 'Great Caribbean cuisine.', address: ' 428 Carrall St, Vancouver, BC V6A0A7')