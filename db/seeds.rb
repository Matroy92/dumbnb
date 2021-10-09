# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Create some users...'
Offer.delete_all
puts 'Offers deleted'

User.delete_all
puts "Users deleted"

adeline = User.create!(firstname:'Adeline', lastname:'Cortijos', email:'adeline@cortijos.com', password:'123456')
zak = User.create!(firstname:'Zak', lastname:'Lamjoun', email:'zak@lamjoun.com', password:'123456')
mathieu = User.create!(firstname:'Mathieu', lastname:'Royer', email:'mathieu@royer.com', password:'123456')
emilien = User.create!(firstname:'Emilien', lastname:'Testu', email:'emilien@testu.com', password:'123456')
puts 'Some users created ! '

puts 'Create some offers...'



Offer.create!(user_id: adeline.id, description:'Capable de vous assomer avec une discussion de plus de quatre heures sur les différents appâts de pêche à la mouche sans vous laisser en placer une, Gérard
a déjà a son actif :
3 couples séparés
1 mariage annulé
152 belles-mères dégoutées
3 groupes de chasseurs dissous', small_description:'Le beaucoup trop passionné de pêche', hour_rate: 25, country:'France', city:'Paris', radius: 8,
 availability_start_date:'2021-10-11', availability_end_date:'2021-10-15', availability_start_hour:'08:00', availability_end_hour:'09:00', address: '16 villa gaudelet Paris')

 Offer.create!(user_id: zak.id, description:'Seed 2 Description', small_description:'Seed 2', hour_rate: 25, country:'France', city:'Paris', radius: 8,
 availability_start_date:'2021-10-11', availability_end_date:'2021-10-15', availability_start_hour:'08:00', availability_end_hour:'09:00', address: "115 rue saint-denis paris")

 Offer.create!(user_id: mathieu.id, description:'Seed 3 Description', small_description:'Seed 23', hour_rate: 25, country:'France', city:'Paris', radius: 8,
 availability_start_date:'2021-10-11', availability_end_date:'2021-10-15', availability_start_hour:'08:00', availability_end_hour:'09:00', address: "9 rue des haies paris")
puts 'Some offers created ! '



