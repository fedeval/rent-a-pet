# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

puts "Cleaning database..."
Pet.destroy_all

puts "Creating pets..."
# generate 20 pets
(1..10).each do |id|
    Pet.create!(
# each user is assigned an id from 1-20
        id: id,
        name: Faker::Name.name,
        species: ['cat','dog','monkey','lizard','snake','koala'].sample,
        available: true,
        age: [1,2,3].sample,
        description: Faker::Lorem.sentence(word_count: 10),
        price_per_day: [10,20,30].sample,
        location: Faker::Address.city,
        user_id: '1',
    )
end
puts "Finished!"
