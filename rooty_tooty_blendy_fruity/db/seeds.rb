# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
smoothie = Smoothie.create(name: "Green Mango Fusion")
mango = Ingredient.create(name: "Mango")
banana = Ingredient.create(name: "Banana")
berry = Ingredient.create(name: "Cup frozen berries")
kale = Ingredient.create(name: "Bunch of kale")
milk = Ingredient.create(name: "Cup milk")
smoothie.ingredients = [mango, banana, berry, kale, milk]
smoothie.save