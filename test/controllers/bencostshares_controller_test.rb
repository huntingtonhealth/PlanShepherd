require 'test_helper'

class BencostsharesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get bencostshares_index_url
    assert_response :success
  end

  test "should get edit" do
    get bencostshares_edit_url
    assert_response :success
  end

  test "should get new" do
    get bencostshares_new_url
    assert_response :success
  end

  test "should get show" do
    get bencostshares_show_url
    assert_response :success
  end

end
