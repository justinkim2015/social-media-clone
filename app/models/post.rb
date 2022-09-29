class Post < ApplicationRecord
  belongs_to :user

  def pretty_time
    created_at.time.to_s[0..15]
  end
end
