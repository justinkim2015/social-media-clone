require "test_helper"

class PostFlowsTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  def setup
    sign_in users(:one)
    Rails.application.load_seed

    @post = Post.first
  end

  test "can create post" do
    get "/"
    assert_response :success

    post "/posts",
      params: { post: {body: 'hello' }}
    assert_response :redirect
    follow_redirect!
    assert_response :success
    assert_select "li"
  end

  test 'can delete post' do
    get "/posts"
    assert_response :success

    delete "/posts/#{@post.id}"
    assert_response :redirect
    follow_redirect!
    assert_response :success
  end

  test 'can edit post' do
  end
end
