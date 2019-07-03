class VendorSweet < ApplicationRecord
  belongs_to :vendor
  belongs_to :sweet

  validates :price, presence: true
  validates :price, numericality: { greater_than: 0 }
  validates :price, numericality: { only_integer: true}

end
