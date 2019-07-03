class VendorsweetsController < ApplicationController
    def index
        @vendorsweets = Vendorsweets.all
    end 

    def show 
        @vendorsweet = Vendorsweet.find(params[:id])
    end 

    def new
        @vendorsweet = Vendorsweet.new
    end

    def create
     @vendorsweet = Vendorsweet.create(vendorsweet_params)

      redirect_to vendorsweet_path(@vendorsweet)
    end 
end

private

    def vendorsweet_params
        params.require(:vendorsweet).permit(:vendor_id, :sweet_id, :price)
    end