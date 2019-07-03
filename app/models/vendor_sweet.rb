class VendorSweet < ApplicationRecord
  belongs_to :sweet
  belongs_to :vendor

    validates :price, presence: true
    validates :price , numericality: {only_integer: true , greater_than_or_equal_to: 0 }
    validate  :already_esist


#Create a validation that prevents a VendorSweet from
#being saved if one already exists for that Vendor and Sweet
    def already_esist
      @all_sweet=self.vendor.sweets
      arr=@all_sweet.select{|sweet| sweet==self.sweet}
    if   arr.count ==1
    errors.add(:vendor, " is already selling that sweet.")
    end
  end
end
