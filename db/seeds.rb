# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Vendor.destroy_all
Sweet.destroy_all


insomnia = Vendor.create(name: "Insomnia Cookies")
cream = Vendor.create(name: "Cookies Cream")
carvel = Vendor.create(name: "Carvel")

chip = Sweet.create(name: "Chocolate Chip Cookie")
chunk = Sweet.create(name: "Chocolate Chunk Cookie")
mandm = Sweet.create(name: "M&Ms Cookie")

join1 = Vendorsweet.create(price: 5, vendor: insomnia, sweet: chip)
join2 = Vendorsweet.create(price: 4, vendor: cream, sweet: chunk)
join3 = Vendorsweet.create(price: 3, vendor: carvel, sweet: mandm)

