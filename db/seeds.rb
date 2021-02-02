# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
addresses = [
            "Rudi-Dutschke-Straße 26, 10969 Berlin, Germany",
            "Tauentzienstraße 21-24, 10789 Berlin, GermanyTauentzienstraße 21-24, 10789 Berlin, Germany",
            "Alexanderplatz, 10178 Berlin, Germany",
            "Schumannstraße 13A, 10117 Berlin, Germany",
            "Mercedes-Platz 1, 10243 Berlin, Germany",
            "Str. des 17. Juni, 10785 Berlin, Germany",
            "Platz der Luftbrücke 5, 12101 Berlin, Germany",
            "Klosterstraße 62, 10179 Berlin, Germany",
            "Schönhauser Allee 180, 10119 Berlin, Germany",
            "Saarbrücker Str. 37a, 10405 Berlin, Germany"
]
c = 0

puts "Cleaning database..."
Pet.destroy_all

puts "Creating pets..."
# generate 20 pets
10.times do
    Pet.create!(
        name: Faker::Name.name,
        species: ['cat','dog','monkey','lizard','snake','koala'].sample,
        available: true,
        age: [1,2,3].sample,
        description: Faker::Lorem.sentence(word_count: 10),
        price_per_day: [10,20,30].sample,
        # location: Faker::Address.full_address,
        location: addresses[c],
        user_id: 1,
    )
    c += 1
end
puts "Finished!"
