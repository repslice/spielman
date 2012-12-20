# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts 'Set up default users'
user = User.create! :name => 'First User', :email => 'repslice@gmail.com', :password => 'please', :password_confirmation => 'please'
puts 'Created: ' << user.name
user2 = User.create! :name => 'Second User', :email => 'someguy@example.com', :password => 'please', :password_confirmation => 'please'
puts 'Created: ' << user2.name
