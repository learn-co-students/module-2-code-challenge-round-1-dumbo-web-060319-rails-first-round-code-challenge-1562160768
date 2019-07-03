class VendorSweetsController < ApplicationController

    def new
      @vendorsweet = VendorSweet.find(params[:id])
      @sweets = Sweet.all 
      @vendors = Vendors.all
    end

    def create
      @vendorsweet = VendorSweet.create(vendorsweet_params)
      if @vendorsweet.valid?
       redirect_to vendor_path(@vendorsweet.vendor.name)
      else
        flash[:errors] = @vendorsweet.errors.full_messages
        redirect_to new_vendorsweet_path
      end
    end

    private

    def vendorsweet_params
      params.require(:vendorsweet).permit(:price, :vendor_id, :sweet_id)
    end

  end
  