require 'test_helper'

class ServiceareasControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get serviceareas_index_url
    assert_response :success
  end

  test "should get edit" do
    get serviceareas_edit_url
    assert_response :success
  end

  test "should get new" do
    get serviceareas_new_url
    assert_response :success
  end

  test "should get show" do
    get serviceareas_show_url
    assert_response :success
  end

end
