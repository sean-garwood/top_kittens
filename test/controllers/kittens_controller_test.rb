require "test_helper"

class KittensControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get kittens_url
    assert_response :success
  end
end
