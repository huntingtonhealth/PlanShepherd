require 'test_helper'

class CrosswalksControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get crosswalks_index_url
    assert_response :success
  end

  test "should get edit" do
    get crosswalks_edit_url
    assert_response :success
  end

  test "should get new" do
    get crosswalks_new_url
    assert_response :success
  end

  test "should get show" do
    get crosswalks_show_url
    assert_response :success
  end

end
