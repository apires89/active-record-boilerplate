
require 'faker'
# This is where you can create initial data for your app.

#Create data




puts 'Creating 100 fake restaurants...'
100.times do
  restaurant = Restaurant.new(
    name:    Faker::GameOfThrones.character,
    address: "#{Faker::Address.street_address}, #{Faker::Address.city}",
    rating:  rand(0..5)
  )
  restaurant.save!
end
puts 'Finished!'
