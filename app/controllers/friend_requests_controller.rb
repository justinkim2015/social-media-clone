class FriendRequestsController < ApplicationController
  def create
    @friend_request = current_user.sent_friend_requests.build(friend_request_params)

    if @friend_request.save
      flash.notice = "Friend request sent!"
      redirect_back_or_to root_path
    else
      flash.alert = "Error!"
      redirect_back_or_to root_path
    end
  end

  # Right now I'm finding the relation with ALL the requests by querying the requestor and recievers IDs.  What I need to do is find the ID for the 
  # actual friend request so it's just one.
  def destroy
    @friend_request = FriendRequest.find_request(params[:requester_id], params[:reciever_id])
    @friend_request.destroy
    flash.notice = "Friend invite revoked!"

    redirect_back_or_to root_path, status: :see_other
  end

  private

  def friend_request_params
    params.require(:friend_request).permit(:reciever_id, :requester_id)
  end
end
