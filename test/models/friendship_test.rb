require "test_helper"

class FriendshipTest < ActiveSupport::TestCase
  def setup
    @friendship = Friendship.first
  end

  test 'should be able to see friend_a info' do
    assert @friendship.friend_a
  end

  test 'should be able to see friend_b info' do
    assert @friendship.friend_b
  end
end
