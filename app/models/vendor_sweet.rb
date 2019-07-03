class VendorSweet < ApplicationRecord
  validates :price, presence: true, numericality: { only_integer: true, greater_than: -1 }
  # validates :vendor, :sweet, uniqueness: true

  belongs_to :sweet
  belongs_to :vendor
end
