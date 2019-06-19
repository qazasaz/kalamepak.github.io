require 'test_helper'

class AdminControllerTest < ActionDispatch::IntegrationTest
  test "should get dashboard" do
    get admin_dashboard_url
    assert_response :success
  end

  test "should get student_list" do
    get admin_student_list_url
    assert_response :success
  end

  test "should get fee_process" do
    get admin_fee_process_url
    assert_response :success
  end

  test "should get attendance" do
    get admin_attendance_url
    assert_response :success
  end

end
