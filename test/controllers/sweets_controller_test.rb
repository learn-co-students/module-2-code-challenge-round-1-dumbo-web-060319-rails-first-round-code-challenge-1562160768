require 'test_helper'

class SweetsControllerTest < ActionDispatch::IntegrationTest
  test "should get edit" do
    get sweets_edit_url
    assert_response :success
  end

  test "should get show" do
    get sweets_show_url
    assert_response :success
  end

  test "should get update" do
    get sweets_update_url
    assert_response :success
  end

  test "should get destroy" do
    get sweets_destroy_url
    assert_response :success
  end

  test "should get new" do
    get sweets_new_url
    assert_response :success
  end

  test "should get create" do
    get sweets_create_url
    assert_response :success
  end

end
