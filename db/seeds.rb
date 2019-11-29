# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
robot1 = Robot.create(name: "Robot1", r_type: "hackerobot", serial_number: "R000001")

weapon1 = Weapon.create(w_type: 'laser', serial_number: 'W000001', robots_id: robot1)

armor1 = Armor.create(a_type: 'laser', serial_number: 'A000001', robots_id: robot1)
