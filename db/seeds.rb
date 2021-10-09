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
gilles = User.create!(firstname:'Gilles', lastname:'Durant', email:'gilles@durant.com', password:'123456')
charles = User.create!(firstname:'Charles', lastname:'Camille', email:'charles@camille.com', password:'123456')
puts 'Some users created ! '

puts 'Create some offers...'


Offer.create!(user_id: adeline.id, description:'Capable de vous assomer avec une discussion de plus de quatre heures sur les différents appâts de pêche à la mouche sans vous laisser en placer une, Gérard
a déjà a son actif :
3 couples séparés
1 mariage annulé
152 belles-mères dégoutées
3 groupes de chasseurs dissous', small_description:'La soeur caché de Larusso', hour_rate: 23,
 availability_start_date:'2021-10-11', availability_end_date:'2021-10-15', availability_start_hour:'08:00', availability_end_hour:'09:00', address: '16 villa gaudelet Paris')

 Offer.create!(user_id: zak.id, description:'Le beaucoup trop passionné de pêche', small_description:'Le beaucoup trop passionné de pêche', hour_rate: 25,
 availability_start_date:'2021-10-11', availability_end_date:'2021-10-15', availability_start_hour:'08:00', availability_end_hour:'09:00', address: "115 rue saint-denis paris")

 Offer.create!(user_id: mathieu.id, description:'Le passionné de boules', small_description:'Le passionné de boules', hour_rate: 24,
 availability_start_date:'2021-10-11', availability_end_date:'2021-10-15', availability_start_hour:'08:00', availability_end_hour:'09:00', address: "9 rue des haies paris")

 Offer.create!(user_id: emilien.id, description:'Seed 3 Description', small_description:'Collectionneur de cartes Pokemon', hour_rate: 25,
 availability_start_date:'2021-10-11', availability_end_date:'2021-10-15', availability_start_hour:'08:00', availability_end_hour:'09:00', address: "5 rue du carillon")

 Offer.create!(user_id: gilles.id, description:'Seed 3 Description', small_description:'Juste con', hour_rate: 25,
 availability_start_date:'2021-10-11', availability_end_date:'2021-10-15', availability_start_hour:'08:00', availability_end_hour:'09:00', address: "123 rue oberkampf paris")

 Offer.create!(user_id: charles.id, description:'Seed 3 Description', small_description:'Portuguais par alliance', hour_rate: 20,
 availability_start_date:'2021-10-11', availability_end_date:'2021-10-15', availability_start_hour:'08:00', availability_end_hour:'09:00', address: "40 boulevard malesherbes")
 puts 'Some offers created ! '



