class VendorSweet < ApplicationRecord
  belongs_to :vendor
  belongs_to :sweet

  validates :price, presence: true, numericality: { only_integer: true, greater_than: 0 }

  def full_stats
    "#{self.sweet.name} costs $#{self.price}.00 here at the #{self.vendor.name}!"
  end

end
