class SweetsController < ApplicationController
  def index
    @sweets = Sweet.all
  end

  def show
    get_sweet
  end

  def new
    @sweet = Sweet.new
  end

  def create
        @sweet = Sweet.new(sweet_params)
        if sweet.save
          redirect_to @sweet
        else
          render :new
        end
   end

    private

    def sweet_params
      params.require(:sweet).permit(:name)
    end

    def get_sweet
      @sweet = Sweet.find(params[:id])
    end

end
