require 'test_helper'

class FplsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get fpls_index_url
    assert_response :success
  end

end
