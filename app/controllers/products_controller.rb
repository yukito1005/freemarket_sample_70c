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

  def destroy
    @product = Product.find(params[:id])
    if @product.user.id == current_user.id
      @product.destroy
      redirect_to root_path
    end
  end

  def purchase
  end

  def purchase
  end
end
