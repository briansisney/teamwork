# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Role.create([{name: "Sales Planner"}, {name: "Sales Director"}, {name: "Account Planner"}, {name: "Account Director"}])
User.create([{name: "Eric Cartman"}, {name: "Stan Marsh"}, {name: "Kyle Broflovski"}, {name: "Kenny McCormick"}, {name: "Trey Parker"}, {name: "Matt Stone"}])
Client.create([{name: "McDonalds"}, {name: "Chipotle"}, {name: "MTV"},{name: "NBC"}, {name: "Coca-Cola"}])
