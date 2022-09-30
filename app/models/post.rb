class Post < ApplicationRecord
  belongs_to :user

  has_many :likes
  has_many :users_who_like, through: :likes, source: :user

  def pretty_time
    created_at.time.to_s[0..15]
  end
end
