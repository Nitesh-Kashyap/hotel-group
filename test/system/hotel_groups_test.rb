require "application_system_test_case"

class HotelGroupsTest < ApplicationSystemTestCase
  setup do
    @hotel_group = hotel_groups(:one)
  end

  test "visiting the index" do
    visit hotel_groups_url
    assert_selector "h1", text: "Hotel groups"
  end

  test "should create hotel group" do
    visit hotel_groups_url
    click_on "New hotel group"

    fill_in "Name", with: @hotel_group.name
    click_on "Create Hotel group"

    assert_text "Hotel group was successfully created"
    click_on "Back"
  end

  test "should update Hotel group" do
    visit hotel_group_url(@hotel_group)
    click_on "Edit this hotel group", match: :first

    fill_in "Name", with: @hotel_group.name
    click_on "Update Hotel group"

    assert_text "Hotel group was successfully updated"
    click_on "Back"
  end

  test "should destroy Hotel group" do
    visit hotel_group_url(@hotel_group)
    click_on "Destroy this hotel group", match: :first

    assert_text "Hotel group was successfully destroyed"
  end
end
