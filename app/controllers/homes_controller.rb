class HomesController < ApplicationController
  def show
    @category_first = Category.all.order("id ASC").limit(13)
  end

  def index
    @parents = Category.where(ancestry: nil)
  end
end
