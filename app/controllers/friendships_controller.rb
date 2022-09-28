class FriendshipsController < ApplicationController
  def create
    @friendship = Friendship.new(friend_a_id: current_user.id, friend_b_id: params[:requester_id])

    if @friendship.save
      flash.notice = "You are now friends!"
      redirect_back_or_to root_path
    else
      flash.alert = "Something went wrong, try again."
      redirect_back_or_to root_path, status: :unprocessable_entity
    end
  end
end
