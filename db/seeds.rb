# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

lists = List.create([{name: "Groceries", description: "Things to pick up from Coles"}, {name: "Chemist", description: "Things to pick up from Chemist Warehouse"}, {name: "Dry Cleaners", description: "Things to pick up from Dry cleaners"}])
items = Item.create([{name: "Toothpaste", description: "Colegate Total Plus Whitening", quantity: 3, list_id: 2},
    {name: "Toothpaste", description: "Colegate Total Plus Whitening", quantity: 3, list_id: 2},
    {name: "Nurofen", description: "Ibuprofen", quantity: 1, list_id: 2},
    {name: "Ham", description: "Virginian Shaved g", quantity: 400, list_id: 1},
    {name: "Coffee", description: "Nescafe gold", quantity: 1, list_id: 1},
    {name: "Zucchini", description: "Vegetable", quantity: 6, list_id: 1},
    {name: "White Shirt", description: "White shirt for wedding", quantity: 3, list_id: 3},
    {name: "Blazer Jacket", description: "Brown", quantity: 3, list_id: 3},
    {name: "Wedding Dress", description: "Delecate - Check for damage", quantity: 3, list_id: 3}
    ])