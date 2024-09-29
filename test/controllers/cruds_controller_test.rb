require "test_helper"

class CrudsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @crud = cruds(:one)
  end

  test "should get index" do
    get cruds_url
    assert_response :success
  end

  test "should get new" do
    get new_crud_url
    assert_response :success
  end

  test "should create crud" do
    assert_difference("Crud.count") do
      post cruds_url, params: { crud: { day_registered: @crud.day_registered, email_id: @crud.email_id, first_name: @crud.first_name, house_address: @crud.house_address, last_name: @crud.last_name, phone_no: @crud.phone_no } }
    end

    assert_redirected_to crud_url(Crud.last)
  end

  test "should show crud" do
    get crud_url(@crud)
    assert_response :success
  end

  test "should get edit" do
    get edit_crud_url(@crud)
    assert_response :success
  end

  test "should update crud" do
    patch crud_url(@crud), params: { crud: { day_registered: @crud.day_registered, email_id: @crud.email_id, first_name: @crud.first_name, house_address: @crud.house_address, last_name: @crud.last_name, phone_no: @crud.phone_no } }
    assert_redirected_to crud_url(@crud)
  end

  test "should destroy crud" do
    assert_difference("Crud.count", -1) do
      delete crud_url(@crud)
    end

    assert_redirected_to cruds_url
  end
end
