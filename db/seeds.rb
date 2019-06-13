# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# 10.times do |i|
#     Product.create(name: Faker::Commerce.product_name,
#                    price: Faker::Commerce.price.to_i,
#                    description: Faker::Quote.famous_last_words,
#                    photo:"https://picsum.photos/id/#{i}/200/300")
# end

# 10.times do |i|
#     Information.create(title: Faker::Commerce.product_name,
#                    description: Faker::Quote.famous_last_words,)
#
#
# end
#
# 20.times do |i|
#   start_at = Random.rand(10).days.ago + 5.days
#   Tested.create!(title: Faker::Name.name, start: start_at)
# end
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?

AdminUser.create!(email: 'omarelias1997@gmail.com', password: 'omar3349735', password_confirmation: 'omar3349735') 
