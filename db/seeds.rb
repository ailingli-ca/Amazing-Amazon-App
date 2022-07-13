# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# Review.destroy_all
# Product.destroy_all

40.times do
    p = Product.create(
        title: Faker::Commerce.product_name,
        description: Faker::Commerce.color,
        price: Faker::Commerce.price
    )
    if p.valid?
        rand(1..5).times do
            Review.create(rating:3, body: Faker::Hacker.say_something_smart, product:p)
            # Review.create(rating:3,body:Faker::Company.name,product:p)
         end
    end
end

reviews = Review.all
products = Product.all

p "created #{products.count} products"
puts reviews.count