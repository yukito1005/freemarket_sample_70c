class LikesController < ApplicationController
  def like_create
    @product = Product.find(params[:product_id])
    #お気に入りを押すとuser_id,product_idがlikeテーブルに反映される
    Like.create(user_id: current_user.id, product_id: @product.id)
    # redirect_back(fallback_location: root_path)
    #お気に入りの数をすぐに反映させる。
  end 

  def destroy
    @like = Like.find_by(product_id: params[:product_id], user_id: current_user.id)
    @like.destroy
    redirect_back(fallback_location: root_path)
  end



end
