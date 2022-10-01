class Post < ApplicationRecord
  belongs_to :user

  has_many :likes
  has_many :users_who_like, through: :likes, source: :user

  has_many :comments

  def pretty_time
    created_at.time.to_s[0..15]
  end

  def display_likes
    if likes.count.zero?
      ''
    elsif likes.count == 1
      "#{likes.count} like"
    else
      "#{likes.count} likes"
    end
  end

  def self.filter_posts(current_user)
    posts = []

    current_user.friends.each do |friend|
      posts << friend.posts
    end

    posts + current_user.posts
  end
end
