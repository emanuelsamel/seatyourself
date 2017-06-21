# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.destroy_all
Reservation.destroy_all
Restaurant.destroy_all


kitkat = Restaurant.create!(
name: 'Kit Kat',
address:'1234 King Street',
neighbourhood:'Entertainment District',
price_range: 'Expensive',
summary: 'This place has food and also drinks. Also, chairs.',
menu: 'Lasagna, hot dogs, and fish sticks',
photo_url: 'https://media-cdn.tripadvisor.com/media/photo-s/03/34/4c/b0/kit-kat.jpg',
max_capacity: 100
)

mcdonalds = Restaurant.create!(
name: 'McDonalds',
address:'689 Bloor St. East',
neighbourhood:'Tire Fire District',
price_range: 'Cheap',
summary: 'Never a lineup for the restroom',
menu: 'Burgers, fries, weird muffins, Star Wars toys',
photo_url: 'http://www.mcdonalds.ca/content/dam/Canada/en/home_page_new/images/slide1.jpg',
max_capacity: 80
)

emanuel = User.create!(
full_name: 'Emanuel Samel',
phone_number: 4169671111,
email: 'mannys@hotmail.com',
password: '1234'
)

Reservation.create!(
time: 12,
party_size: 5,
restaurant: mcdonalds,
user: emanuel
)

Reservation.create!(
time: 14,
party_size: 4,
restaurant: kitkat,
user: emanuel
)
