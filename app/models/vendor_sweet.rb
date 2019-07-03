class VendorSweet < ApplicationRecord 
    belongs_to :vendor 
    belongs_to :sweet

    validates :price, presence: true
    validates :price, numericality: { :greater_than => 0 }
    validates_numericality_of :price, :only_integer => true
    # validate :same_vendor_same_sweet, on: :create

    # private

    # def same_vendor_same_sweet
    #     if VendorSweet.find_by(vendor_sweet_params)
    #         errors.add(:vendor_sweet, "Cannot create this vendor_sweet, this combination of vendor and sweet already exists")
    #     end
    # end


end