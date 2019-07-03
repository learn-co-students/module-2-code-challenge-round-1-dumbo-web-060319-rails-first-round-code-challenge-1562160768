class VendorsController < ApplicationController

  def index
    @vendors = Vendor.all
  end

  def show
    @vendor = Vendor.find(params[:id])
    @vendor_sweet = VendorSweet.where(vendor_id: @vendor.id)
  end

end
