class VenderSweetsController < ApplicationController
  

  def index
    @vendor_sweets = VenderSweet.all
  end

  def show
    @vendor_sweet = VenderSweet.find(params[:id])
  end
  
  def new
    @vendor_sweet = VenderSweet.new
  end

  def create
    @vendor_sweet = VenderSweet.create(vender_params)
    redirect_to @vendor_sweet
    # if @vendor_sweet.valid?
    #   redirect_to @vendor_sweet
    # else
    #   flash[:errors] = @vendor_sweet.errors.full_messages
    #   redirect_to new_vender_sweet_path
    # end
  end

  private

    # def find_vender_sweet
    #   @vendor_sweet = VenderSweet.find(params[:id])
    # end

    def vender_params
      params.require(:vender_sweet).permit(:price, :vendors, :sweets)
    end

end
