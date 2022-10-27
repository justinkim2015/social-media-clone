class Comment < ApplicationRecord
  validates :user_id, :post_id, :body, presence: true

  belongs_to :post
  belongs_to :user

  def author_name
    user.name
  end

  def author_id
    user.id
  end

  def post_id
    post.id
  end

  def author?(author)
    user == author
  end
end
