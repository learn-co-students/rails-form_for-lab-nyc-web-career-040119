# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Student.create(first_name:'Xavier', last_name: 'Downing')
Student.create(first_name:'Alex', last_name: 'Griff')
Student.create(first_name:'Ali', last_name: 'Reubenstone')
Student.create(first_name:'Chris', last_name: 'Metzger')
Student.create(first_name:'Vera', last_name: 'Protopopova')

SchoolClass.create(title: 'Collins', room_number: 101)
SchoolClass.create(title: 'Faulk', room_number: 205)
