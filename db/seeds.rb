# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

cat = ['chinese', 'italian', 'japanese', 'french', 'belgian']
5.times do
 restaurant = Restaurant.new(
   name: Faker::Restaurant.name,
   address: Faker::Address.full_address,
   phone_number: Faker::PhoneNumber.cell_phone,
   category: cat.sample
 )
 restaurant.save!
end

rat = [0..5]
5.times do
  review = Review.new(
    content: Faker::Restaurant.review,
    rating: rat.sample
    )
  review.save!
end
