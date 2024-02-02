require "test_helper"

class Api::V1::RegisterControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get api_v1_register_create_url
    assert_response :success
  end
end
