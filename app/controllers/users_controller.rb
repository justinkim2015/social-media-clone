class UsersController < ApplicationController
  def index
    @users = User.all
    @filtered_users = User.filter_users(current_user.id)
    @friend_request = FriendRequest.new
  end

  def show
    @user = User.find(params[:id])
    @post = Post.new
    @comment = current_user.comments.build
  end

  def update_profile
    @user = User.find(params[:id])

    if @user.update(bio: params[:bio])
      redirect_to user_path(params[:id])
    else
      render :edit_profile, status: :unprocessable_entity
    end
  end
end
