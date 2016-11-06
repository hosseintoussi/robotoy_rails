require 'test_helper'

class RobotoyControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get robotoy_index_url
    assert_response :success
  end

end
