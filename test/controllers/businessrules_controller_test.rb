require 'test_helper'

class BusinessrulesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get businessrules_index_url
    assert_response :success
  end

  test "should get edit" do
    get businessrules_edit_url
    assert_response :success
  end

  test "should get new" do
    get businessrules_new_url
    assert_response :success
  end

  test "should get show" do
    get businessrules_show_url
    assert_response :success
  end

end
