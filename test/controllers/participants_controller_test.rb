require "test_helper"

class ParticipantsControllerTest < ActionDispatch::IntegrationTest
  test "should get past_participations" do
    get participants_past_participations_url
    assert_response :success
  end

  test "should get upcoming_participations" do
    get participants_upcoming_participations_url
    assert_response :success
  end
end
