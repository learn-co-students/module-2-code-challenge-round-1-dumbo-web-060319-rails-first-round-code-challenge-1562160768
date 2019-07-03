  class VendorSweetsController < ApplicationController
  def new
    @vendor_sweet = VendorSweet.new
  end

  def create
    @vendor_sweet = VendorSweet.new(vendor_sweet_params)
    if @vendor_sweet.valid?
      @vendor_sweet.save
      redirect_to vendor_path(@vendor_sweet.vendor_id)
    else
      flash[:errors] = @vendor_sweet.errors
      render :new
    end
  end

  private

  def vendor_sweet_params
    params.require(:vendor_sweet).permit(:price, :vendor_id, :sweet_id)
  end
end
