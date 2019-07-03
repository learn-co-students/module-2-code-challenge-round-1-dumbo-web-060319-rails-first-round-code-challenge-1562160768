class VendorsController < ApplicationController
  before_action :find_vendor, only: [:show]

  def index
    @vendors = Vendor.all
  end

  def show
    @vendor_sweets = @vendor.vendor_sweets
  end


  private
  def find_vendor
    @vendor = Vendor.find(params[:id])
  end

end
