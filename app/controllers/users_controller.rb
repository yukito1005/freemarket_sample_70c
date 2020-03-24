class UsersController < ApplicationController

  def index #Cardのデータpayjpに送り情報を取り出す
  end
  def show
    if current_user.id !=  params[:id].to_i
      redirect_to root_path
    else
      @user_products=Product.where(user_id: current_user.id)
      @parents = Category.where(ancestry: nil)
    end
  end 

end
