class CommentsController < ApplicationController

  def create
    @product = Product.find(params[:product_id])
    @comment = @product.comments.new(comment_params)
    if @comment.save
      respond_to do |format|
        format.json
      end
    else
      @comments = @group.comments.includes(:user)
      flash[:alert] = 'メッセージを入力してください。'
      redirect_to product_path(@product)
    end
  end

  def comment_destroy
    # @product = Product.find(params[:product_id])
    @comment = Comment.find(params[:id])
    @comment.destroy
  end

  private

  def comment_params
    params.require(:comment).permit(:text, :product_id).merge(user_id: current_user.id)
  end

end
