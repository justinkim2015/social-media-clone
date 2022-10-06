require "test_helper"

class ProfileTest < ActiveSupport::TestCase
  def setup
    @profile = Profile.first
  end

  test 'should be able to see user info' do
    assert @profile.user
  end
end
