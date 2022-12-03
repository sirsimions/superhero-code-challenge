# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts 'Rosy is seeding'


hero1 = Hero.create(name: "Sam", super_name: "Avator")
hero2 = Hero.create(name: "Trev", super_name: "No joker")
hero3 = Hero.create(name: "Kantei", super_name: " Planner")

#Creation of Powers seed data
lying = Power.create(name: "womanman",description: "Knows how to tell the difference between truth and lies")
speaker = Power.create(name: "louder",description: " Can address a large gathering or crowd without the help of a microphone")


HeroPower.create("strength": "Strong", "hero_id":hero1.id, "power_id":lying.id)
HeroPower.create("strength": "Weak", "hero_id":hero1.id, "power_id":lying.id)
HeroPower.create("strength": "Average", "hero_id":hero2.id, "power_id":speaker.id)
HeroPower.create("strength": "Strong", "hero_id":hero3.id, "power_id":speaker.id)

puts 'Done seeding!'
