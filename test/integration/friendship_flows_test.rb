require "test_helper"

class FriendshipFlowsTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  def setup
    sign_in users(:one)
    Rails.application.load_seed
  end

  test "can accept friend requests" do
    post "/friendships",
      params: { friendship: {friend_a_id: 1, friend_b_id: 2} }
    assert_response :redirect
  end
end
