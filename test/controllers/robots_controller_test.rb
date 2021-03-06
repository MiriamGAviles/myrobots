require 'test_helper'

class RobotsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get robots_index_url
    assert_response :success
  end

  test "should get create" do
    get robots_create_url
    assert_response :success
  end

  test "should get update" do
    get robots_update_url
    assert_response :success
  end

  test "should get delete" do
    get robots_delete_url
    assert_response :success
  end

end
