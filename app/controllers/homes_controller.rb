class HomesController < ApplicationController
  def show

  @category_first = Category.all.order("id ASC").limit(13)

  end

  def index
    @products = Product.all.order("created_at DESC").limit(3)
    @pickupbrand = Product.where(category_id: "304").limit(3)
  end
end
