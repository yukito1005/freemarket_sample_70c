class HomesController < ApplicationController
  def show

  @category_first = Category.all.order("id ASC").limit(13)

  end

  def index
    @products = Product.all
    @images = Image.all
  end
end
