class SweetsController < ApplicationController

  def index
    @sweets = Sweet.all
  end

  def new
    @sweet = Sweet.new
  end 

  def create
    @sweet = Sweet.create(sweet_params)

    redirect_to @sweet 
  end 

  def show
    find_sweet
  end 

  def edit
    find_sweet
  end 

  def update
    @sweet = Sweet.update(sweets_params)

    redirect_to @sweet 
  end 

  def destroy
    find_sweet.destroy
  end 

  def find_sweet
    @sweet = Sweet.find(params[:id])
  end 

  private

  def sweets_params
    params.require(:sweet).permit(
      :name
    )
  end

end
