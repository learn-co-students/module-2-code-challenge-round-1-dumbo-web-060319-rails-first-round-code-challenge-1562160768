class VendorsController < ApplicationController

  before_action find_vendor, ONly:

  def index
    @vendors = Vendor.all
  end

  def edit

  end

  def show
  end

  def update
  end

  def destroy
  end

  def new
  end

  def create
  end

  private

  def find_vendor
    @vendor = Vender.find(params{:id})
  end

  def vendor_params
    params.require(:vendorsweet).permit(:price, :vender_id, :sweet_id)
  end
end
