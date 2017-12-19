require 'test_helper'

class TransparenciesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get transparencies_index_url
    assert_response :success
  end

  test "should get edit" do
    get transparencies_edit_url
    assert_response :success
  end

  test "should get new" do
    get transparencies_new_url
    assert_response :success
  end

  test "should get show" do
    get transparencies_show_url
    assert_response :success
  end

end
