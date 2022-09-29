class UsersController < ApplicationController
  def index
    @users = User.all
    @filtered_users = User.filter_users(current_user.id)
    @friend_request = FriendRequest.new
  end

  def show
    @user = User.find(params[:id])
  end
end
