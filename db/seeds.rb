# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Role.create([{name: "Sales Planner"}, {name: "Sales Director"}, {name: "Account Planner"}, {name: "Account Director"}])
User.create([{name: "Brian Sisney"}, {name: "Brad Pitt"}, {name: "RuPaul Charles"}, {name: "Quincy Jones"}])
Client.create([{name: "McDonalds"}, {name: "Chipotle"}, {name: "Viacom"}, {name: "Forever 21"}])
