class CommentsController < ApplicationController
  def new
    @comment = Comment.new
    @post = Post.find(params[:post_id])
  end

  def create
    @comment = Comment.new(comment_params)

    if @comment.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @comment = Comment.find_by(post_id: params[:comment][:post_id], user_id: params[:comment][:user_id])

    @comment.destroy
    flash.notice = "Comment deleted"
    redirect_back_or_to root_path
  end

  private

  def comment_params
    params.require(:comment).permit(:body, :user_id, :post_id)
  end
end
