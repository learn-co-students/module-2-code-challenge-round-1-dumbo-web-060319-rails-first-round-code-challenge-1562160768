class VendorSweetsController < ApplicationController


  def new
    @sweets = Sweet.all
    @vendors = Vendor.all
    @vendor_sweets = VendorSweet.new
  end

  def create
    @vendor_sweets = VendorSweet.create(vendor_sweets_params)
    redirect_to sweets_path(@vendor_sweets.sweets)
  end


private


def vendor_sweets_params
     params.require(:vendor_sweets).permit(:content, :sweets_id, :vendors_id)
end

end
