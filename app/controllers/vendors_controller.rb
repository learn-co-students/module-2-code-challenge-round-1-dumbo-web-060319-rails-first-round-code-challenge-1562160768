class VendorsController < ApplicationController

  def index
    @vendors = Vendor.all
  end

  def show 
    @vendor = Vendor.find(params[:id])
  end   

  #Instructions did not specify if to add actions New, Create, and Delete. 
  #However, can comment out if not wanted.
  def new 
    @vendor = Vendor.new 
  end 
  def create 
    @new = Vendor.create(vendor_params)
    redirect_to vendors_path
  end 

  private 
  def vendor_params
    params.require(:vendor).permit(:name)
  end
end
