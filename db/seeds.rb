# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


	Carte.create(name: 'Root Abstract Carte', description: 'Ancestor of all CarteComponents', lineage: '1')
	Carte.create(name: 'Breakfast', description: 'Serving form 5AM to 11AM', lineage: '1-2', parent_id: 1)
	Carte.create(name: 'Lunch', description: 'Delicious Lunches', lineage: '1-3', parent_id: 1)
	Carte.create(name: 'Dinner', description: 'Our best at dinner time', lineage: '1-4', parent_id: 1)
	Carte.create(name: 'Drinks', description: 'Colds and Hots Berevages', lineage: '1-5', parent_id: 1)
	CarteItem.create(name:'Eggs and Ham', description: 'Two Eggs, One Ham Sile, served with bread', price: 6.35, lineage: '1-2-6', parent_id: 2)
	CarteItem.create(name:'Cheese Croassaint', description: 'Delicious Croassaint with 2 slides of Mozarella', price: 4.35, lineage: '1-2-7', parent_id: 2)
	CarteItem.create(name:'Full House Burger', description: 'Tomatoes, Lettuce, Cheese, Bacon, Pickels served with Fries', price: 8.99, lineage: '1-3-8', parent_id: 3)
	CarteItem.create(name:'Chicken Burger', description: 'Tomatoes, Lettuce, Mozarella served with Fries', price: 7.99, lineage: '1-3-9', parent_id: 3)
	CarteItem.create(name:'Meat Balls', description: 'Spaguetties with tomato sauce', price: 6.99, lineage: '1-3-10', parent_id: 3)
	CarteItem.create(name:'Steak and Shrimp', description: 'Grilled Steak and Shrimp with Cajun season', price: 11.99, lineage: '1-4-11', parent_id: 4)
	CarteItem.create(name:'Orange Juice', description: 'From Californias Oranges', price: 1.99, lineage: '1-5-12', parent_id: 5)
	CarteItem.create(name:'Soft Drinks', description: 'Coke, Fanta, Dr. Pepper', price: 1.99, lineage: '1-5-13', parent_id: 5)