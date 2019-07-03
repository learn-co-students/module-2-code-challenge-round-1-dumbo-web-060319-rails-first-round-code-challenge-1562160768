class VendorSweetsController < ApplicationController
    before_action :find_vendor_sweet, only: [:create, :show]

    def index
        @vendor_sweets = VendorSweet.all
    end

    def new
        @vendor_sweet = VendorSweet.new
        @vendors = Vendor.all
        @sweets = Sweet.all
    end

    def create
        @vendor_sweet = VendorSweet.create(vendor_sweet_params)
        if @vendor_sweet.valid?
            redirect_to vendor_path(@vendor_sweet.@vendor)
        else 
            flash[:errors] = @vendor_sweet.errors.full_message
            redirect_to new_vendor_path
        end
    end


    private
    def find_vendor_sweet
        @vendor_sweet = VendorSweet.find(params[:id])
    end

    def vendor_sweet_params
        params.require(:vendor_sweet).permit(:vendor_id, :sweet_id, :price)
    end

end



