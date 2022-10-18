class User < ApplicationRecord
  after_create :send_mail, :create_profile

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :omniauthable, omniauth_providers: %i[facebook]

  has_many :posts

  has_many :recieved_friend_requests, foreign_key: "reciever_id", class_name: "FriendRequest"
  has_many :sent_friend_requests, foreign_key: "requester_id", class_name: "FriendRequest"

  has_many :friendships_as_a, foreign_key: :friend_a_id, class_name: :Friendship
  has_many :friends_as_a, through: :friendships_as_a, source: :friend_b

  has_many :friendships_as_b, foreign_key: :friend_b_id, class_name: :Friendship
  has_many :friends_as_b, through: :friendships_as_b, source: :friend_a

  has_many :likes
  has_many :liked_posts, through: :likes, source: :post

  has_many :comments

  has_one :profile

  # has_many :friendships, ->(user) { where("friend_a_id = ? OR friend_b_id = ?", user.id, user.id) }
  # has_many :friends, through: :friendships
  # https://medium.com/@elizabethprendergast/using-custom-relation-queries-to-establish-friends-and-friendships-in-rails-and-activerecord-6c6e5825433a

  def self.filter_users(id)
    current_user = User.find(id)
    User.all - [current_user] - current_user.friends
  end

  def has_request_from_current_user?(req_user)
    true unless FriendRequest.find_by(requester_id: req_user, reciever_id: id).nil?
  end

  def friends
    friends_as_a + friends_as_b
  end

  def name
    "#{first_name[0].upcase + first_name[1..].downcase} #{last_name[0].upcase + last_name[1..].downcase}"
  end

  def friends_with?(user)
    friends.include?(user)
  end

  def profile_picture
    profile.profile_pic
  end

  def self.from_omniauth(auth)
    name_split = auth.info.name.split(" ")
    user = User.where(email: auth.info.email).first
    user ||= User.create!(provider: auth.provider, uid: auth.uid, last_name: name_split[1], first_name: name_split[0], email: auth.info.email, password: Devise.friendly_token[0, 20])

    user
  end

  private

  def send_mail
    UserMailer.with(user: self).welcome_email.deliver_later
  end

  def create_profile
    Profile.create(user_id: id)
  end
end
