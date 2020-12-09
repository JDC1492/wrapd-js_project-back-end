# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

List.create(name: "Jonathan")
    ListItem.create(item_name: "G-Shock Smart Watch",
        item_price: 399.99,
        list_id:1)
    ListItem.create(item_name: "Playstation V",
        item_price: 499.99,
        list_id:1)
    ListItem.create(item_name: "Nintendo E-Store Gift Card",
        item_price: 25.00,
        list_id:1)

List.create(name: "Carlton")
    ListItem.create(item_name: "Nintendo Switch",
        item_price: 299.99,
        list_id:2)
    ListItem.create(item_name: "Nintendo E-Store Gift Card",
        item_price: 25.00,
        list_id:2)
    ListItem.create(item_name: "Switch Pro Controller",
        item_price: "69.99",
        list_id:2)

List.create(name: "Ashley")
    ListItem.create(item_name: "TJ-Maxx Gift Card",
        item_price: 150.00,
        list_id:3)
    ListItem.create(item_name: "iPhone 12 Pro Max",
        item_price: 1099.99,
        list_id:3)
    ListItem.create(item_name: "Old Navy Gift Card",
        item_price: 150.00,
        list_id:3)