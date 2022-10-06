require "test_helper"

class LikeTest < ActiveSupport::TestCase
  def setup
    @like = Like.first
  end

  test 'should be able to see post info' do
    assert @like.post
  end

  test 'should be able to see writers info' do
    assert @like.user
  end
end
