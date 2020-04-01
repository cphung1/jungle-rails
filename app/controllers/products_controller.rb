class ProductsController < ApplicationController

  def index
    # Uses MODEL 
    @products = Product.all.order(created_at: :desc)

    # VIEW
    render :index #this doesn't need to be included is implicit from line above, but added for clarity /views/products/index.html.erb
  end

  def show
    @product = Product.find params[:id]
  end

end
