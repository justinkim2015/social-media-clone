require "test_helper"

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.first
  end

  test "should be able to see sent friend requests" do
    assert @user.sent_friend_requests
  end

  test "should be able to see recieved friend requests" do
    assert @user.recieved_friend_requests
  end
end
