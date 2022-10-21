require "test_helper"

class LikeFlowsTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  def setup
    sign_in users(:one)
    Rails.application.load_seed
  end

  test "Can like post" do
  end

  test "Can unlike post" do
  end
end
