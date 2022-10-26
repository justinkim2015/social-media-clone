class CreateInitialComments < ActiveRecord::Migration[7.0]
  def up
    Comment.create!(user_id: 1, post_id: 1, body: "Cool!")
    Comment.create!(user_id: 2, post_id: 2, body: "Really?")
    Comment.create!(user_id: 3, post_id: 2, body: "Ok")
    Comment.create!(user_id: 4, post_id: 4, body: "That's nice!")
    Comment.create!(user_id: 5, post_id: 5, body: "Laaame")
    Comment.create!(user_id: 6, post_id: 7, body: "Meh")
    Comment.create!(user_id: 7, post_id: 7, body: "How's it going")
    Comment.create!(user_id: 8, post_id: 8, body: "I swear im a real person")
    Comment.create!(user_id: 4, post_id: 9, body: "Pls")
    Comment.create!(user_id: 5, post_id: 10, body: "No")
  end

  def down
    Comment.delete_all
  end
end
