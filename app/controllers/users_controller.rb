class UsersController < ApplicationController
  def index #Cardのデータpayjpに送り情報を取り出す
  end
  def show
    @user_products=Product.where(user_id: current_user.id)
    @parents = Category.where(ancestry: nil)
  end 
end