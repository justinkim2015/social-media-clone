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

  def destroy
    @friend_requests = FriendRequest.find_requests(params[:requester_id], params[:reciever_id])
    @friend_requests[0].destroy
    flash.notice = "Friend invite revoked!"

    redirect_to users_path, status: :see_other
  end

  private

  def friend_request_params
    params.require(:friend_request).permit(:reciever_id, :requester_id)
  end
end
