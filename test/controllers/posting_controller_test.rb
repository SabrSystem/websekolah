require "test_helper"

class PostingControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get posting_index_url
    assert_response :success
  end
end
