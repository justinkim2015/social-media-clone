class Post < ApplicationRecord
  belongs_to :user

  has_many :likes
  has_many :users_who_like, through: :likes, source: :user

  def pretty_time
    created_at.time.to_s[0..15]
  end

  def display_likes
    if likes.count.zero?
      'Like'
    else
      "#{likes.count} likes"
    end
  end
end
