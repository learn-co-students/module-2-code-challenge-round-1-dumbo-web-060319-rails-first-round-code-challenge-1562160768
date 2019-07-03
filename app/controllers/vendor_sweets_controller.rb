class VendorSweetsController < ApplicationController
  def index
  	@vendor_sweets = VendorSweet.all
  end

  def show
  	@vendor_sweet = VendorSweet.find(params[:id])
  end

  def new
  	@vendor_sweet = VendorSweet.new
  end

  def create
  	@vendor_sweet = VendorSweet.create(vendor_sweet_params)
    if @vendor_sweet.valid?
  	  redirect_to vendor_sweet_path(@vendor_sweet)
    else
      redirect_to new_vendor_sweet
      #do the flash errors stuff
  end


  private

    def vendor_sweet_params
      params.require(:vendor_sweet).permit(:price, :sweet, :vendor)
    end
end
