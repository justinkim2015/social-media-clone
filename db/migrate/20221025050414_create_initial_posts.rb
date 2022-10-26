class CreateInitialPosts < ActiveRecord::Migration[7.0]
  def up
    Post.create!(user_id: 1, body: "Hello!")
    Post.create!(user_id: 1, body: "This is a post! I think that this indeed a website")

    Post.create!(user_id: 2, body: "RAndommmmmmmmm!")
    Post.create!(user_id: 2, body: "Stream of consciousness typing")

    Post.create!(user_id: 3, body: "Hamsters are a pretty cool animal!")
    Post.create!(user_id: 3, body: "They are crepscular, which means they're active at dawn and dusk")

    Post.create!(user_id: 4, body: "Ferrets are rat eating machines!")
    Post.create!(user_id: 4, body: "Rats are smart enough to stay away if they smell the musk of a ferret")

    Post.create!(user_id: 5, body: "Why is everyone on this site interested in rodents and rodent adjacents")
    Post.create!(user_id: 5, body: "I like dogs")

    Post.create!(user_id: 6, body: "My name is uh I forgot")
    Post.create!(user_id: 6, body: "I write things with words that have meanings")

    Post.create!(user_id: 7, body: "Coo coo coo coo")
    Post.create!(user_id: 7, body: "Not a pidgeon just jake peralta.")
  end

  def down
    Post.delete_all
  end
end
