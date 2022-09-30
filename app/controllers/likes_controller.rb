class LikesController < ApplicationController
  def create
    @like = Like.new(like_params)

    @like.save

    redirect_back_or_to root_path
  end

  private

  def like_params
    params.require(:like).permit(:post_id, :user_id)
  end
end
