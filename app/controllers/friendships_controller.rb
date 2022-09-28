class FriendshipsController < ApplicationController
  def create
    @friendship = Friendship.new(friendship_params)

    if @friendship.save
      FriendRequestManager.new.delete(friendship_params)
      flash.notice = "You are now friends!"
      redirect_back_or_to root_path
    else
      flash.alert = "Something went wrong, try again."
      redirect_back_or_to root_path, status: :unprocessable_entity
    end
  end

  private

  def friendship_params
    params.require(:friendship).permit(:friend_a_id, :friend_b_id)
  end
end
