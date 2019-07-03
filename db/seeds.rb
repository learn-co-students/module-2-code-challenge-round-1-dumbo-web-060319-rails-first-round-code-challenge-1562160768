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


VendorSweet.create(price:10, vendor:Vendor.first, sweet:Sweet.first)


# i=0
# while i <10
#   @rand_vendor=Vendor.all.sample
#   @rand_sweet=Sweet.all.sample
# VendorSweet.create(price:i, vendor:@rand_vendor, sweet:@rand_sweet)
# i+=1
# end
