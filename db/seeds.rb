# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'faker'

# Create shops
20.times do
 Shop.create!(
   title:  Faker::Lorem.sentence,
   comment:   Faker::Lorem.paragraph
 )
end

shops = Shop.all

# Create Comments
20.times do
 Review.create!(
   shop: shops.sample,
   comment: Faker::Lorem.paragraph
 )
end

puts "Seed finished"
puts "#{Shop.count} shops created"
puts "#{Review.count} reviews created"