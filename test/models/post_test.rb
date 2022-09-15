require "test_helper"

class PostTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test 'should not save post without body' do
    post = Post.new
    assert_not post.save, 'Saved the post without a body'
  end

  test 'should add user_id to db'
    user = User.first
    post = user.posts.build(body: "hello")

    assert post 
end
