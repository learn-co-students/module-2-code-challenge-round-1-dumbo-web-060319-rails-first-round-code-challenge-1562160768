class VendorSweetsController < ApplicationController


    def show
        vendor_sweet
    end

    def new
        new_vendor_sweet
    end

    def create
        if @vendor_sweet = VendorSweet.new(vendor_sweet_params)
            @vendor_sweet.save
            redirect_to vendor_sweet_path(@vendor_sweet)
        else
            redirect_to new_vendor_sweet_path
        end
    end

    private

    def vendor_sweet
        @vendor_sweet = VendorSweet.find(params[:id])
    end

    def new_vendor_sweet
        @vendor_sweet = VendorSweet.new
    end 

    def vendor_sweet_params
        params.require(:vendor_sweet).permit(:price, :vendor_id, :sweet_id)
    end

end
