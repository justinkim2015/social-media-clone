class FriendRequestManager
  def delete(params)
    rec_id = params[:friend_a_id]
    req_id = params[:friend_b_id]

    FriendRequest.find_by(reciever_id: rec_id, requester_id: req_id).destroy
  end
end