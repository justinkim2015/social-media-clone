class FriendRequest < ApplicationRecord
  belongs_to :requester, class_name: :User
  belongs_to :reciever, class_name: :User

  def self.find_requests(req_id, rec_id)
    FriendRequest.where(reciever_id: rec_id).where(requester_id: req_id)
  end

  def self.find_request(req_id, rec_id)
    FriendRequest.find(find_id(req_id, rec_id))
  end

  def self.find_id(req_id, rec_id)
    FriendRequest.where(reciever_id: rec_id).where(requester_id: req_id)[0].id
  end
end
