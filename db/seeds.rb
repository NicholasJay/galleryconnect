# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create(first_name: 'Nicholas', last_name: 'Bundy', phone_number: '111-222-3333', email: 'nicholasjaybundy@gmail.com', street_address: '1866 Bleecker St Apt 2L', city: 'Ridgewood', state: 'NY', zipcode: 11385, password: 'testing', password_confirmation: 'testing')
