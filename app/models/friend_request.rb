class FriendRequest < ApplicationRecord
  belongs_to :requester, class_name: :User
  belongs_to :reciever, class_name: :User

  def self.find_requests(req_id, rec_id)
    FriendRequest.where(reciever_id: rec_id).where(requester_id: req_id)
  end

  def name
    requester.name
  end

  def short_name
    if requester.first_name.length > 5
      "#{requester.first_name[0..3]}..."
    else
      requester.first_name
    end
  end

  def display_name
    if requester.name.length > 6
      short_name
    else
      name
    end
  end

  def id
    requester.id
  end
end
