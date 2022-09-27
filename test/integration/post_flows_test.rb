require "test_helper"

class PostFlowsTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  def setup
    sign_in users(:one)
    Rails.application.load_seed
  end

  test "can create post" do
    get "/"
    assert_response :success

    post "/posts",
      params: { post: {body: 'hello' }}
    assert_response :redirect
    follow_redirect!
    assert_response :success
    assert_select "li"
  end
end
