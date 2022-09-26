class UsersController < ApplicationController
  def index
    @users = User.all
    @friend_request = FriendRequest.new
  end

  def show
    @user = User.find(params[:id])
  end
end
