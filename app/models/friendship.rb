class Friendship < ApplicationRecord
  validates :friend_a_id, :friend_b_id, presence: true

  belongs_to :friend_a, class_name: :User
  belongs_to :friend_b, class_name: :User
end
