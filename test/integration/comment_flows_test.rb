require "test_helper"

class CommentFlowsTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  def setup
    sign_in users(:one)
    Rails.application.load_seed

    @comment = Comment.first
  end

  test "Can write comment" do
    post "/comments",
      params: { comment: {body: 'Hello', post_id: 1} }
    assert_response :redirect
    follow_redirect!
    assert_response :success
  end

  test "invalid input" do
    post "/comments",
      params: { comment: {body: nil, post_id: nil} }
  end

  test "Can delete comment" do
    delete "/comments/#{@comment.id}"
    assert_response :redirect
    follow_redirect!
    assert_response :success
  end

  test "Can edit comment" do
    patch "/comments/#{@comment.id}",
      params: { comment: {body: 'Hello'} }
    assert_response :redirect
    follow_redirect!
    assert_response :success
  end
end
