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


macdonalds = Restaurant.create!(
name: 'kit kat',
address:'1234',
neighbourhood:'Entertainment District',
price_range: 'Expensive',
summary: 'ns;enresnrvilserfn',
menu: 'esjriu iaueniae iuwenin iune',
photo_url: 'http://www.mcdonalds.ca/content/dam/Canada/en/home_page_new/images/slide1.jpg'

)

emanuel = User.create!(
full_name: 'Emanuel Samel',
phone_number: 3713360,
email: 'mannys@hotmail.com',
password: '1234'
)

Reservation.create!(
time: 12,
party_size: 5,
restaurant: macdonalds,
user: emanuel
)

kitkat = Restaurant.create!(
name: 'kit kat',
address:'1234',
neighbourhood:'Entertainment District',
price_range: 'Expensive',
summary: 'ns;enresnrvilserfn',
menu: 'esjriu iaueniae iuwenin iune',
photo_url: 'https://media-cdn.tripadvisor.com/media/photo-s/03/34/4c/b0/kit-kat.jpg'

)

emanuel = User.create!(
full_name: 'Emanuel Samel',
phone_number: 3713360,
email: 'mannys@hotmail.com',
password: '1234'
)

Reservation.create!(
time: 12,
party_size: 5,
restaurant: kitkat,
user: emanuel
)

macdonalds = Restaurant.create!(
name: 'kit kat',
address:'1234',
neighbourhood:'Entertainment District',
price_range: 'Expensive',
summary: 'ns;enresnrvilserfn',
menu: 'esjriu iaueniae iuwenin iune',
photo_url: 'http://www.mcdonalds.ca/content/dam/Canada/en/home_page_new/images/slide1.jpg'

)

emanuel = User.create!(
full_name: 'Emanuel Samel',
phone_number: 3713360,
email: 'mannys@hotmail.com',
password: '1234'
)

Reservation.create!(
time: 12,
party_size: 5,
restaurant: macdonalds,
user: emanuel
)
