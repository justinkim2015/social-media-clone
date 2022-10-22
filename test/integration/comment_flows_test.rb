require "test_helper"

class CommentFlowsTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  def setup
    sign_in users(:one)
    Rails.application.load_seed
  end

  test "Can write comment" do
    post "/comments",
      params: { comment: {body: 'Hello', post_id: 1} }
    assert_response :redirect
    follow_redirect!
    assert_response :success
  end

  test "Can delete comment" do
  end

  test "Can edit comment" do
  end
end
