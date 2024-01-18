require "test_helper"

class NewControllerTest < ActionDispatch::IntegrationTest
  test "should get Post" do
    get new_Post_url
    assert_response :success
  end

  test "should get index" do
    get new_index_url
    assert_response :success
  end
end
