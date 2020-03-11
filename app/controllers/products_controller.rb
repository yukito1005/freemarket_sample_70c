class ProductsController < ApplicationController
  def index
  
  
  def new
    @products = Product.all
  end 

  def show
    @products = Product.all
  end

  def purchase
  end
end
