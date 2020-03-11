class HomesController < ApplicationController
  def show
   
  end

  def index
    @products = Product.all
    @images = Image.all
  end
end
