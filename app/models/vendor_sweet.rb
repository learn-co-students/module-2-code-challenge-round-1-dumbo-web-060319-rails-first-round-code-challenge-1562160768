class VendorSweet < ApplicationRecord
  belongs_to :vendors
  belongs_to :sweets

  validates :price, presence: true, numericality: {greater_than: 0}, numericality: { only_integer: true }


end
