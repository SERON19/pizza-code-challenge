# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Restaurant.destroy_all
Pizza.destroy_all
RestaurantPizza.destroy_all

5.times do 
    Restaurant.create(name:Faker::Restaurant.name,
    address: Faker::Address.full_address)
end


Pizza.create!(name: "Aglio e olio", ingridients: "Tomato sauce, Garlic, Olive oil")
Pizza.create!(name: "Bianca", ingridients: "Ricotta, Mozzarella, Garlic")
Pizza.create!(name: "Gamberetti", ingridients: "Tomato sauce, Mozzarella, Shrimps (Gamberetti)")

    RestaurantPizza.create(restaurant_id: 1, pizza_id: 2, price: 10)
    RestaurantPizza.create(restaurant_id: 1, pizza_id: 4, price: 3)
    RestaurantPizza.create(restaurant_id: 2, pizza_id: 1, price: 9)
    RestaurantPizza.create(restaurant_id: 2, pizza_id: 4, price: 4)
    RestaurantPizza.create(restaurant_id: 3, pizza_id: 1, price: 5)