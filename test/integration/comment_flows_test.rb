require "test_helper"

class CommentFlowsTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  def setup
    sign_in users(:one)
    Rails.application.load_seed
  end

  test "Can write comment" do
  end

  test "Can delete comment" do
  end

  test "Can edit comment" do
  end
end
