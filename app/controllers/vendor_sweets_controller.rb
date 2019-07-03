class VendorSweetsController < ApplicationController

  def new 
    @vendorsweet = VendorSweet.new
    @vendors = Vendor.all 
    @sweets = Sweet.all

  end 

  def create 
    @vendorsweet = Vendor_Sweet.create(vendor_sweet_params)
    @vendor = Vendor.find(params[:id])
    redirect_to vendor_sweets_path(@vendor)
  end 



  private 

  def vendor_sweet_params 
  params.require(:vendorsweet).permit(:price, :vendor_id, :sweet_id)
  end 

end
