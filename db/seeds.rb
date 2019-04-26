# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
dan = SchoolClass.create(title: "Dan", room_number: 2)
jeff = Student.create(first_name: "Jeff", last_name: "Marks", school_class: dan)
