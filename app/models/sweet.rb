class Sweet < ApplicationRecord
  has_many :vender_sweets
  has_many :vendors, through: :vender_sweets
end
