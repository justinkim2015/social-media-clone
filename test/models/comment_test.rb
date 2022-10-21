require "test_helper"

class CommentTest < ActiveSupport::TestCase
  # def setup
  #   @comment = Comment.first
  # end

  # test 'should be able to see writers info' do
  #   assert @comment.user
  # end

  # test 'should be able to see commented posts info' do
  #   assert @comment.post
  # end

  test 'comment exists' do
    assert Comment.first
  end
end
