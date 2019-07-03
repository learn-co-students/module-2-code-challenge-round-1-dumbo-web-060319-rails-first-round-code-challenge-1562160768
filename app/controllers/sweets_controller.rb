class SweetsController < ApplicationController
  def index
    @sweet = Sweet.all
  end

  def new
    @sweet = Sweet.new
  end

  def show
    find_sweet
  end

  private

  def find_sweet
    @sweet = Sweet.find(params[:id])
  end
end

# 2. A user should be able to visit a page with a form that will let them choose a `Vendor` and a `Sweet` and create a `VendorSweet` when they submit that form.

# The form should include a dropdown to select a vendor, another dropdown to select its sweet, and an input for the price.

# We'd like the route to this form to follow the RESTful convention (as well as the route that it should submit its form values to).

# Once the `VendorSweet` is created, we'd like to go to the selected vendor's show page.
