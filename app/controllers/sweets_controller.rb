class SweetsController < ApplicationController
  def index
    @sweets = Sweet.all
  end

  def show
    @sweets = Sweet.find(params[:id])
  end

end
