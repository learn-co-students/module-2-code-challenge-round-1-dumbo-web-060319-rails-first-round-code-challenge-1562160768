class VendorsController < ApplicationController

def index
  @vendors = Vendor.all
end

def show
  get_vendor
end

def new
  @vendor = Vendor.new
end

def create
      @vendor = Vendor.new(vendor_params)
      if vendor.save
        redirect_to @vendor
      else
        render :new
      end
 end

  private

  def vendor_params
    params.require(:vendor).permit(:name)
  end

  def get_vendor
    @vendor = Vendor.find(params[:id])
  end

end
