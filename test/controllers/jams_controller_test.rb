require "test_helper"

class JamsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get jams_new_url
    assert_response :success
  end

  test "should get create" do
    get jams_create_url
    assert_response :success
  end

  test "should get edit" do
    get jams_edit_url
    assert_response :success
  end

  test "should get update" do
    get jams_update_url
    assert_response :success
  end

  test "should get index" do
    get jams_index_url
    assert_response :success
  end

  test "should get show" do
    get jams_show_url
    assert_response :success
  end
end
