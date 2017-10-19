# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

quote = Quote.create(text: "Don't cry because it's over, smile because it happened", author: "Dr. Suess")
category = Category.create(name: "Self Love")
CategoryQuote.create(category_id: category.id, quote_id: quote.id)