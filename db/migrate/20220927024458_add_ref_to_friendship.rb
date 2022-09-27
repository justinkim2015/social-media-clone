class AddRefToFriendship < ActiveRecord::Migration[7.0]
  def change
    add_reference :friendships, :friend_a, null: false
    add_reference :friendships, :friend_b, null: false
  end
end
