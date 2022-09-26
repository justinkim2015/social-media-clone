class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :posts

  has_many :recieved_friend_requests, foreign_key: "reciever_id", class_name: "FriendRequest"
  has_many :sent_friend_requests, foreign_key: "requester_id", class_name: "FriendRequest"

  def self.not_self(id)
    User.where.not(id: id)
  end
end
