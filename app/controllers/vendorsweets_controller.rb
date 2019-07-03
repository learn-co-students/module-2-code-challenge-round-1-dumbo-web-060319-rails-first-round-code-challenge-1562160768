class VendorsweetsController < ApplicationController

    def index
        @vendorsweets = Vendorsweet.all
    end

    def show
    end
    
end
