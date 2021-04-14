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
cat1 = Pet.create!(
    name: Faker::Name.name,
    species: cat,
    available: true,
    age: [1..15].sample,
    description: Faker::Lorem.sentence(word_count: 10),
    price_per_day: [5..50].sample,
    location: addresses[0],
    user_id: 1,
)
cat1.photo.attach(io: File.open(File.join(Rails.root, '/app/assets/images/cat1.jpg')), filename: 'cat1.jpg', content_type: 'image/jpg')

cat2 = Pet.create!(
    name: Faker::Name.name,
    species: cat,
    available: true,
    age: [1..15].sample,
    description: Faker::Lorem.sentence(word_count: 10),
    price_per_day: [5..50].sample,
    location: addresses[0],
    user_id: 1,
)
cat2.photo.attach(io: File.open(File.join(Rails.root, '/app/assets/images/cat2.jpg')), filename: 'cat2.jpg', content_type: 'image/jpg')

cat3 = Pet.create!(
    name: Faker::Name.name,
    species: cat,
    available: true,
    age: [1..15].sample,
    description: Faker::Lorem.sentence(word_count: 10),
    price_per_day: [5..50].sample,
    location: addresses[0],
    user_id: 1,
)
cat3.photo.attach(io: File.open(File.join(Rails.root, '/app/assets/images/cat3.jpg')
    ), filename: 'cat3.jpg', content_type: 'image/jpg')

cat4 = Pet.create!(
    name: Faker::Name.name,
    species: cat,
    available: true,
    age: [1..15].sample,
    description: Faker::Lorem.sentence(word_count: 10),
    price_per_day: [5..50].sample,
    location: addresses[0],
    user_id: 1,
)
cat4.photo.attach(io: File.open(File.join(Rails.root, '/app/assets/images/cat4.jpg')), filename: 'cat4.jpg', content_type: 'image/jpg')

dog = Pet.create!(
    name: Faker::Name.name,
    species: cat,
    available: true,
    age: [1..15].sample,
    description: Faker::Lorem.sentence(word_count: 10),
    price_per_day: [5..50].sample,
    location: addresses[0],
    user_id: 1,
)
dog.photo.attach(io: File.open(File.join(Rails.root, '/app/assets/images/dog.jpg')), filename: 'dog.jpg', content_type: 'image/jpg')

dog1 = Pet.create!(
    name: Faker::Name.name,
    species: cat,
    available: true,
    age: [1..15].sample,
    description: Faker::Lorem.sentence(word_count: 10),
    price_per_day: [5..50].sample,
    location: addresses[0],
    user_id: 1,
)
dog1.photo.attach(io: File.open(File.join(Rails.root, '/app/assets/images/dog1.jpg')), filename: 'dog1.jpg', content_type: 'image/jpg')

dog3 = Pet.create!(
    name: Faker::Name.name,
    species: cat,
    available: true,
    age: [1..15].sample,
    description: Faker::Lorem.sentence(word_count: 10),
    price_per_day: [5..50].sample,
    location: addresses[0],
    user_id: 1,
)
dog3.photo.attach(io: File.open(File.join(Rails.root, '/app/assets/images/dog3.jpg')), filename: 'dog3.jpg', content_type: 'image/jpg')

dog4 = Pet.create!(
    name: Faker::Name.name,
    species: cat,
    available: true,
    age: [1..15].sample,
    description: Faker::Lorem.sentence(word_count: 10),
    price_per_day: [5..50].sample,
    location: addresses[0],
    user_id: 1,
)
dog4.photo.attach(io: File.open(File.join(Rails.root, '/app/assets/images/dog4.jpg')), filename: 'dog4.jpg', content_type: 'image/jpg')

puts "Finished!"
