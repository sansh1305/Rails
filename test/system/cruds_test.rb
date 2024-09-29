require "application_system_test_case"

class CrudsTest < ApplicationSystemTestCase
  setup do
    @crud = cruds(:one)
  end

  test "visiting the index" do
    visit cruds_url
    assert_selector "h1", text: "Cruds"
  end

  test "should create crud" do
    visit cruds_url
    click_on "New crud"

    fill_in "Day registered", with: @crud.day_registered
    fill_in "Email", with: @crud.email_id
    fill_in "First name", with: @crud.first_name
    fill_in "House address", with: @crud.house_address
    fill_in "Last name", with: @crud.last_name
    fill_in "Phone no", with: @crud.phone_no
    click_on "Create Crud"

    assert_text "Crud was successfully created"
    click_on "Back"
  end

  test "should update Crud" do
    visit crud_url(@crud)
    click_on "Edit this crud", match: :first

    fill_in "Day registered", with: @crud.day_registered
    fill_in "Email", with: @crud.email_id
    fill_in "First name", with: @crud.first_name
    fill_in "House address", with: @crud.house_address
    fill_in "Last name", with: @crud.last_name
    fill_in "Phone no", with: @crud.phone_no
    click_on "Update Crud"

    assert_text "Crud was successfully updated"
    click_on "Back"
  end

  test "should destroy Crud" do
    visit crud_url(@crud)
    click_on "Destroy this crud", match: :first

    assert_text "Crud was successfully destroyed"
  end
end
