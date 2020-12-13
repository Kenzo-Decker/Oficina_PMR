# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Machine.create(name:'Torno 1', state: 'disp')
Machine.create(name:'Torno 2', state: 'manut')
Machine.create(name:'Torno 3', state: 'disp')
Machine.create(name:'Torno 3', state: 'ocup')
Machine.create(name:'Torno 4', state: 'disp')
Machine.create(name:'Fresa 1', state: 'disp')
Machine.create(name:'Fresa 2', state: 'disp')
Machine.create(name:'Fresa 3', state: 'ocup')