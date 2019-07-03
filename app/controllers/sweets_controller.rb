class SweetsController < ApplicationController
  
  def index
    @sweets = Sweet.all
  end

  def show
    current_sweet
  end


  private

  def current_sweet
    @sweet = Sweet.find(params[:id])
  end

end
