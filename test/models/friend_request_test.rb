require "test_helper"

class FriendRequestTest < ActiveSupport::TestCase
  def setup
    @req = FriendRequest.first
  end

  test 'should be able to see requester info' do
    assert @req.requester
  end

  test 'should be able to see reciever info' do
    assert @req.reciever
  end
end
