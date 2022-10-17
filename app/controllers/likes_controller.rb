class LikesController < ApplicationController
  def create
    @like = Like.new(like_params)

    @like.save

    redirect_to like_path(like_params[:post_id])
  end

  def destroy
    @like = Like.find_like(params[:like][:post_id], params[:like][:user_id])
    @like.destroy

    redirect_back_or_to root_path, status: :see_other
  end

  def show
    @post = Post.find(params[:id])
    @post_id = @post.id
    @likes = @post.display_likes
  end

  private

  def like_params
    params.require(:like).permit(:post_id, :user_id)
  end
end
