require 'test_helper'

class VendorsweetsControllerTest < ActionDispatch::IntegrationTest
  test "should get edit" do
    get vendorsweets_edit_url
    assert_response :success
  end

  test "should get show" do
    get vendorsweets_show_url
    assert_response :success
  end

  test "should get update" do
    get vendorsweets_update_url
    assert_response :success
  end

  test "should get destroy" do
    get vendorsweets_destroy_url
    assert_response :success
  end

  test "should get new" do
    get vendorsweets_new_url
    assert_response :success
  end

  test "should get create" do
    get vendorsweets_create_url
    assert_response :success
  end

end
