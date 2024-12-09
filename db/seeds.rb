# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Vendor.destroy_all
Sweet.destroy_all

vendors = ["Insomnia Cookies", "Cookies Cream","Carvel","Gregory's Coffee","Duane Park Patisserie","Tribeca Treats"]
sweets = ["Chocolate Chip Cookie", "Chocolate Chunk Cookie","M&Ms Cookie","White Chocolate Cookie","Brownie","Peanut Butter Icecream Cake", ]

vendors.each do |vendor|
  Vendor.create(name: vendor)
end

sweets.each do |sweet|
  Sweet.create(name: sweet)
end

# vendor_sweets.each do |vs|
#   VendorSweet.create(vendor_id: sweet)
# end

vs1 = VendorSweet.create(vendor_id: 1, sweet_id: 2, price: 1)
vs2 = VendorSweet.create(vendor_id: 2, sweet_id: 2, price: 2)
vs3 = VendorSweet.create(vendor_id: 3, sweet_id: 3, price: 3)
vs4 = VendorSweet.create(vendor_id: 4, sweet_id: 3, price: 4)
vs5 = VendorSweet.create(vendor_id: 4, sweet_id: 4, price: 5)
vs6 = VendorSweet.create(vendor_id: 5, sweet_id: 1, price: 6)
