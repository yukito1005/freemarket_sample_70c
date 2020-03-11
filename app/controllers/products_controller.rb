class ProductsController < ApplicationController
  before_action :set_product, expect: [:index, :new]

  def index
  end


  def new
  end 

  def show
    @images = @product.images
    @category = @product.category
  end

  def edit
  end

  def destroy
    if @product.user.id == current_user.id
      @product.destroy
      flash[:notice] = '出品した商品を削除しました'
      redirect_to root_path
      #マイページが完成したらpathをマイページにする。
    else
      flash.now[:alert] = '商品の削除に失敗しました'
      render edit_product_path(@product)
    end
  end

  def purchase
  end

  private
  
  def set_product
    @product = Product.find(params[:id])
  end
end
