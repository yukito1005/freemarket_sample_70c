class ProductsController < ApplicationController
  def index
    @product = Procducts.find(1)
  end
  
  def new
  end 

  def show
  end

  def purchase
  end
end
