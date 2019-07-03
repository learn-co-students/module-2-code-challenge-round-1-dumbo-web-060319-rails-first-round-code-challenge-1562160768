class VendorsController < ApplicationController

  def index
    @vendors = Vendor.all
  end

  def show
    @sweets = Sweet.all
    current_vendor
  end

  def new
  end

  def create
  end

  private

  def current_vendor
    @vendor = Vendor.find(params[:id])
  end

end
