class FriendRequestsController < ApplicationController
  def create
    @friend_request = current_user.sent_friend_requests.build(friend_request_params)

    if @friend_request.save
      flash.notice = 'Friend request sent!'
    else
      flash.alert = 'Error!'
    end

    redirect_back_or_to root_path
  end

  def destroy
    @friend_request = FriendRequest.find_by(requester_id: params[:requester_id], reciever_id: params[:reciever_id])
    @friend_request.destroy
    flash.notice = 'Friend invite revoked!'

    redirect_back_or_to root_path, status: :see_other
  end

  private

  def friend_request_params
    params.require(:friend_request).permit(:reciever_id, :requester_id)
  end
end
