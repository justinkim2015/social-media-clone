class Post < ApplicationRecord
  validates :user_id, :body, presence: true

  belongs_to :user

  has_many :likes
  has_many :users_who_like, through: :likes, source: :user

  has_many :comments

  has_one_attached :photo

  def pretty_time
    created_at.time.to_s[10..15]
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

  def author?(author)
    user == author
  end

  def has_likes?
    true unless likes.count.zero?
  end

  def author_name
    user.name
  end

  def author_id
    user.id
  end

  def photo?
    photo.attached?
  end

  def liked_by?(user)
    users_who_like.include?(user)
  end
end
