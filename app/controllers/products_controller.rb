class ProductsController < ApplicationController
  before_action :set_product, expect: [:index, :new]

  def index
  end


  def new
    @product = Product.new
  end 

  def show
    @images = @product.image
    @category = @product.category
  end

  def edit
  end

  def destroy
    if @product.user.id == current_user.id
      @product.destroy
      redirect_to root_path
    end
  end

  def purchase
  end

  def create
  end 
  private
  
  def set_product
    @product = Product.find(params[:id])
  end
end
