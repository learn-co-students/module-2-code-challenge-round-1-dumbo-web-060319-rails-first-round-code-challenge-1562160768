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
        @vendor_sweet = VendorSweet.create(vendorsweet_params)

        if @vendor_sweet.valid?
        redirect_to vendor_sweet_path(@vendor_sweet)
        else
            flash[:errors] = @vendor_sweet.errors.full_messages
            redirect_to new_vendor_sweet_path 
        end
    end

    def edit
        @vendor_sweet = VendorSweet.find(params[:id])
    end

    def update
        @vendor_sweet = VendorSweet.find(params[:id])

        if @vendor_sweet.update(vendorsweet_params)
            redirect_to vendor_sweet_path(@vendor_sweet)
            else
                flash[:errors] = @vendor_sweet.errors.full_messages
                redirect_to new_vendor_sweet_path 
        end
    end

    def destroy
        @vendor_sweet = VendorSweet.find(params[:id])
        @vendor_sweet.destroy
        redirect_to vendor_sweets_path
    end


    private

    def vendorsweet_params 
        params.require(:vendor_sweet).permit(:price, :sweet_id, :vendor_id)
    end

end
