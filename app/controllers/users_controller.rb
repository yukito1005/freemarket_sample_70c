class UsersController < ApplicationController
  def show
    @user_products=Product.where(user_id: current_user.id)
    @parents = Category.where(ancestry: nil)
  end 
end
