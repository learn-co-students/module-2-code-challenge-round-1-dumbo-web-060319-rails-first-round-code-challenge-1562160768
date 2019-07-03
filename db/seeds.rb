

Vendor.destroy_all
Sweet.destroy_all

vendors = ["Insomnia Cookies", "Cookies Cream", "Carvel", "Gregory's Coffee", "Duane Park Patisserie", "Tribeca Treats"]
sweets = ["Chocolate Chip Cookie", "Chocolate Chunk Cookie", "M&Ms Cookie", "White Chocolate Cookie", "Brownie", "Peanut Butter Icecream Cake"]

vendors.each do |vendor|
  Vendor.create(name: vendor)
end

sweets.each do |sweet|
  Sweet.create(name: sweet)
end
