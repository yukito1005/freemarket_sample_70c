class ProductsController < ApplicationController
  def index

  end


  def new
  end 

  def show
    @product = Product.find(params[:id])
    @category = @product.category
  end

  def edit
    @product = Product.find(params[:id])
  end

  def purchase
  end
end
