require "test_helper"

class ProfilesControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get profiles_show_url
    assert_response :success
  end

  test "should get sponsorship" do
    get profiles_sponsorship_url
    assert_response :success
  end
end
