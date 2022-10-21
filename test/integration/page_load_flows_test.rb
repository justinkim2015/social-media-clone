require "test_helper"

class PageLoadFlowsTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  def setup
    sign_in users(:one)
    Rails.application.load_seed
  end

  test "can see posts#index" do
    get '/'
    assert_select "button"
  end

  test "can see users#index" do
    get users_path
    assert_select "button"
  end

  test "can see user#show" do
    get user_path(1)
    assert_select "button"
  end

  test "can see user#edit" do
    get edit_user_registration_path
    assert_select "button"
  end

  test "can see profiles#edit" do
    get edit_profile_path(1)
    assert_select "button"
  end
end
