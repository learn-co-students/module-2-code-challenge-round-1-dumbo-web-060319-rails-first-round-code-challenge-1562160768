class VendorsController < ApplicationController

  def index
    @vendors = Vendor.all
  end

  def new
    @vendor = Vendor.new
  end 

  def create
    @vendor = Vendor.create(vendor_params)

    redirect_to @vendor 
  end 

  def show
    find_vendor
  end 

  def edit
    find_vendor
  end 

  def update
    @vendor = Vendor.update(vendors_params)

    redirect_to @vendor 
  end 

  def destroy
    find_vendor.destroy
  end 

  def find_vendor
    @vendor = Vendor.find(params[:id])
  end 

  private

  def vendors_params
    params.require(:vendor).permit(
      :name
    )
  end

end
