require "test_helper"

class DoctorsControllerTest < ActionDispatch::IntegrationTest
  test "should get patients" do
    get doctors_patients_url
    assert_response :success
  end

  test "should get statistics" do
    get doctors_statistics_url
    assert_response :success
  end
end
