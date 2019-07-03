class VendorSweetsController < ApplicationController

  def index
    @vendor_sweets = VendorSweet.all
  end

  def new
    @vendor_sweet = VendorSweet.new
  end 

  def create
    @vendor_sweet = VendorSweet.create(vendor_sweets_params)

    #byebug
    flash[:error] = @vendor_sweet.errors.full_messages

    if @vendor_sweet.valid?
      redirect_to vendor_path(@vendor_sweet.vendor)
    else 
      redirect_to new_vendor_sweet_path
    end 
    #redirect_to "/vendors/#{@vendor_sweet.vendor}"
  end 

  def show
    find_vendor_sweet
  end 

  def edit
    find_vendor_sweet
  end 

  def update
    @vendor_sweet = VendorSweet.update(vendor_sweets_params)

    redirect_to @vendor_sweet 
  end 

  def destroy
    find_vendor_sweet.destroy
  end 

  def find_vendor_sweet
    @vendor_sweet = VendorSweet.find(params[:id])
  end 

  private

  def vendor_sweets_params
    params.require(:vendor_sweet).permit(
      :price,
      :vendor_id,
      :sweet_id
    )
  end
end
