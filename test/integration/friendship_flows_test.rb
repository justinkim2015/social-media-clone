require "test_helper"

class FriendshipFlowsTest < ActionDispatch::IntegrationTest
  def setup
    sign_in users(:one)
    Rails.application.load_seed
  end

  # test "can accept friend requests" do
  # end
end
