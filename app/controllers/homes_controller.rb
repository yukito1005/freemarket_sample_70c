class HomesController < ApplicationController
  def show
    @category_first = Category.all.order("id ASC").limit(13)
  end

  def index
    @products = Product.all.order("created_at DESC").limit(3)
    @pickupbrand = Product.where(item_name: "美豚").limit(3)
    @parents = Category.where(ancestry: nil)
  end
end
