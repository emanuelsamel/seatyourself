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
name: 'kit kat',
address:'1234',
neighbourhood:'Entertainment District',
price_range: 'Expensive',
summary: 'ns;enresnrvilserfn',
menu: 'esjriu iaueniae iuwenin iune'

)

emanuel = User.create!(
full_name: 'Emanuel Samel',
phone_number: 3713360,

)

Reservation.create!(
time: 12,
party_size: 5,
restaurant: kitkat,
user: emanuel
)
