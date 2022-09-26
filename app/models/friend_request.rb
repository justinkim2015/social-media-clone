class FriendRequest < ApplicationRecord
  belongs_to :requester, class_name: :User
  belongs_to :reciever, class_name: :User

  def self.find_requests(req_id, rec_id)
    FriendRequest.where(reciever_id: rec_id).where(requester_id: req_id)
  end
end
