class VendorsweetsController < ApplicationController

    def index 
        @vs = Vendorsweet.all
    end 

    def new 
        @vendorsweet = Vendorsweet.new 
    end 

    def create 
        @new = Vendorsweet.new(vendorsweet_params)
        if @new.valid?
            @new.save 
            id = @new.vendor.id
            redirect_to vendor_path(id) 
        else 
            flash[:errors] = @new.errors.full_messages 
            redirect_to new_vendorsweet_path
        end
    end 

    def destroy 
        @found = Vendorsweet.find(params[:id])
        @found.destroy 
        redirect_to vendorsweets_path
    end 

    private 
    def vendorsweet_params
        params.require(:vendorsweet).permit(:price, :sweet_id, :vendor_id)
    end 
end
