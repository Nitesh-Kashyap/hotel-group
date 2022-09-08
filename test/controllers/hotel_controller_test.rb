require "test_helper"

class HotelControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get hotel_index_url
    assert_response :success
  end

  test "should get new" do
    get hotel_new_url
    assert_response :success
  end

  test "should get show" do
    get hotel_show_url
    assert_response :success
  end

  test "should get edit" do
    get hotel_edit_url
    assert_response :success
  end

  test "should get delete" do
    get hotel_delete_url
    assert_response :success
  end
end
