require "test_helper"

class UserTest < ActiveSupport::TestCase
  test "should be able to see sent friend requests" do
    user = User.first
    assert user.sent_friend_requests
  end

  test "should be able to see recieved friend requests" do
    user = User.first
    assert user.recieved_friend_requests
  end
end
