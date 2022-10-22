require "test_helper"

class LikeFlowsTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  def setup
    sign_in users(:one)
    Rails.application.load_seed

    @like = Like.first
  end

  test "Can like post" do
    post "/likes",
      params: { like: {post_id: 1, user_id: 1} }
    assert_response :redirect
    follow_redirect!
    assert_response :success
  end

  test "Can unlike post" do
    delete "/likes/#{@like.id}",
      params: { like: {post_id: 1, user_id: 1} }
    assert_response :redirect
    follow_redirect!
    assert_response :success
  end
end
