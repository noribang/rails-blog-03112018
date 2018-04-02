require 'test_helper'

class IaidoControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get iaido_index_url
    assert_response :success
  end

end
