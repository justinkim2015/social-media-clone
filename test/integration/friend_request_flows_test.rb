require "test_helper"

class FriendRequestFlowsTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  def setup
    sign_in users(:one)
    Rails.application.load_seed
  end

  test "Can send friend requests" do
    get "/users"
    assert_response :success

    post "/friend_requests",
      params: { friend_request: {reciever_id: 1, requester_id: 2} }
    assert_response :redirect
    follow_redirect!
    assert_response :success
    assert_select "button"
  end

  test "Can delete friend request" do
    get "/users"
    assert_response :success

    delete "/friend_requests/0",
      params: { reciever_id: 1, requester_id: 2 }
    assert_response :redirect
    follow_redirect!
    assert_response :success
    assert_select "button"
  end
end
