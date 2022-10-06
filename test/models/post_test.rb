require "test_helper"

class PostTest < ActiveSupport::TestCase
  def setup
    @post = Post.new
    @user = User.first
  end

  test 'should not save post without body' do
    assert_not @post.save, 'Saved the post without a body'
  end

  test 'should add user_id to db' do
    post = @user.posts.build(body: "hello"), 'post is unable to be saved'

    assert post
  end

  test 'should be able to access posts' do
    assert @user.posts, 'post unable to be reached'
  end

  test 'should be able to access friends' do
    assert @user.friends, 'friends unable to accessed'
  end
end