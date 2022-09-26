class FriendRequestsController < ApplicationController
  def create
    @friend_request = current_user.sent_friend_requests.build(friend_request_params)

    if @friend_request.save
      redirect_to users_path
      flash.notice = "Friend request sent!"
    else
      redirect_to users_path
      flash.alert = "Error!"
    end
  end

  private

  def friend_request_params 
    params.require(:friend_request).permit(:reciever_id)
  end
end
