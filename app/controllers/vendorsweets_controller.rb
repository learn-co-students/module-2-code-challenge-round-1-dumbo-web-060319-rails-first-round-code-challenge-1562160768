class VendorsweetsController < ApplicationController
  def index
    @vendorsweet = Vendorsweet.all
  end

  def new
    @vendorsweet = Vendorsweet.new
  end

  def show
    find_vendorsweet
  end

  def create
    @vendorsweet = Vendorsweet.create(vendorsweet_params)

    redirect_to vendor_path(@vendorsweet.vendor.id)
  end

  private

  def find_vendorsweet
    @vendorsweet = Vendorsweet.find(params[:id])
  end

  def vendorsweet_params
    params.require(:vendorsweet).permit(:price)
  end
end

# 2. A user should be able to visit a page with a form that will let them choose a `Vendor` and a `Sweet` and create a `VendorSweet` when they submit that form.

# The form should include a dropdown to select a vendor, another dropdown to select its sweet, and an input for the price.

# We'd like the route to this form to follow the RESTful convention (as well as the route that it should submit its form values to).

# Once the `VendorSweet` is created, we'd like to go to the selected vendor's show page.
