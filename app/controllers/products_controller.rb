class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :destroy, :edit, :update]

  def index
  end


  def new
    @product = Product.new
  end 

  def show
    @images = @product.images
    @category = @product.category
    @images.each_with_index do |image, i|
      if i == 0
        @image = "/assets/purchase-sample.png"
      end
    end
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

  def create
  end 
  private
  
  def set_product
    @product = Product.find(params[:id])
  end
end
