class Vendor < ApplicationRecord
  has_many :vender_sweets
  has_many :sweets, through: :vender_sweets
end
