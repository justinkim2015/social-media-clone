class CommentsController < ApplicationController
  before_action :own_comment, only: [:destroy]

  def new
    @comment = Comment.new
    @post = Post.find(params[:post_id])
  end

  def create
    @comment = current_user.comments.build(comment_params)

    if @comment.save
      redirect_back_or_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @comment = Comment.find(params[:id])

    @comment.destroy
    flash.notice = "Comment deleted"
    redirect_back_or_to root_path
  end

  private

  def comment_params
    params.require(:comment).permit(:body, :post_id)
  end

  def own_comment
    redirect_to root_path unless current_user == Comment.find(params[:id]).user
  end
end
