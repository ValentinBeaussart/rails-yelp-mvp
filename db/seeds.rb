require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
30.times do
  restaurant = Restaurant.new(
    name: Faker::JapaneseMedia::Naruto.character,
    address: Faker::JapaneseMedia::Naruto.village,
    category: 'french',
    phone_number: Faker::JapaneseMedia::Naruto.demon
  )
  restaurant.save!
end
