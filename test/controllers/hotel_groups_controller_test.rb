require "test_helper"

class HotelGroupsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hotel_group = hotel_groups(:one)
  end

  test "should get index" do
    get hotel_groups_url
    assert_response :success
  end

  test "should get new" do
    get new_hotel_group_url
    assert_response :success
  end

  test "should create hotel_group" do
    assert_difference("HotelGroup.count") do
      post hotel_groups_url, params: { hotel_group: { name: @hotel_group.name } }
    end

    assert_redirected_to hotel_group_url(HotelGroup.last)
  end

  test "should show hotel_group" do
    get hotel_group_url(@hotel_group)
    assert_response :success
  end

  test "should get edit" do
    get edit_hotel_group_url(@hotel_group)
    assert_response :success
  end

  test "should update hotel_group" do
    patch hotel_group_url(@hotel_group), params: { hotel_group: { name: @hotel_group.name } }
    assert_redirected_to hotel_group_url(@hotel_group)
  end

  test "should destroy hotel_group" do
    assert_difference("HotelGroup.count", -1) do
      delete hotel_group_url(@hotel_group)
    end

    assert_redirected_to hotel_groups_url
  end
end
