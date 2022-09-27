require "test_helper"

class PostTest < ActiveSupport::TestCase
  test 'should not save post without body' do
    post = Post.new
    assert_not post.save, 'Saved the post without a body'
  end

  test 'should add user_id to db' do
    user = User.first
    post = user.posts.build(body: "hello"), 'post is unable to be saved'

    assert post
  end

  test 'should be able to access posts' do
    user = User.first
    assert user.posts, 'post unable to be reached'
  end

  test 'should be able to access friends' do
    user = User.first
    assert user.friends, 'friends unable to accessed'
  end
end