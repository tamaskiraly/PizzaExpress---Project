# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Item.delete_all
Item.create!(title: 'Margareta',
  ingredients: 'Tomato, Mozzarela, Basil',
      price: 9.95,
  image_url: 'diablo.jpg')

Item.create!(title: 'Hawai',
  ingredients: 'Tomato, Mozzarela, Ham, Pineapple',
      price: 10.50,
  image_url: 'hawai.jpg')
  
  Item.create!(title: 'Diablo',
  ingredients: 'Tomato, Mozzarela, Spicy Pepperoni, Jalapeno',
      price: 11.00,
  image_url: 'diablo.jpg')