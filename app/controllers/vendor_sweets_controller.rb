class VendorSweetsController < ApplicationController

  before_action

  def index
    @vendorsweets = VendorSweet.all
  end

  def new
    @vendorsweet = VendorSweet.new
    @vendors = Vendor.all
    @sweets = Sweet.all
  end

  def create

    @vendorsweet = VendorSweet.create(vendorsweet_params)
    if @vendorsweet.valid?
      redirect_to vendor_path(@vendorsweet.vendor)
    else

    end
  end

  def edit
  end

  def show
  end

  def update
  end

  def destroy
  end

  private

  def find_vendersweet
    @vendorsweet = VendorSweet.find(params[:id])
  end

  def vendorsweet_params
    params.require(:vendorsweet).permit(:price, :vender_id, :sweet_id)
  end


end
