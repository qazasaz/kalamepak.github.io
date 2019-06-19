require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get home_index_url
    assert_response :success
  end

  test "should get dashboard" do
    get home_dashboard_url
    assert_response :success
  end

  test "should get gallery" do
    get home_gallery_url
    assert_response :success
  end

  test "should get fee" do
    get home_fee_url
    assert_response :success
  end

  test "should get books" do
    get home_books_url
    assert_response :success
  end

  test "should get contact_us" do
    get home_contact_us_url
    assert_response :success
  end

  test "should get about" do
    get home_about_url
    assert_response :success
  end

end
