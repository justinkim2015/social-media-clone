class AddRefToFriendRequest < ActiveRecord::Migration[7.0]
  def change
    add_reference :friend_requests, :requester, null: false
    add_reference :friend_requests, :reciever, null: false
  end
end
