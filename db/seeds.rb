require 'faker'
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Restaurant.delete_all
5.times do
  restaurant = Restaurant.new(name: Faker::Book.title, address: Faker::Address.street_address, phone_number: Faker::PhoneNumber.phone_number, category: ['chinese', 'italian', 'japanese', 'french', 'belgian'].sample)
  restaurant.save
end
