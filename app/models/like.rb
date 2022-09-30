class Like < ApplicationRecord
  belongs_to :post
  belongs_to :user

  def self.find_like(post_id, user_id)
    Like.find_by(post_id: post_id, user_id: user_id)
  end
end
