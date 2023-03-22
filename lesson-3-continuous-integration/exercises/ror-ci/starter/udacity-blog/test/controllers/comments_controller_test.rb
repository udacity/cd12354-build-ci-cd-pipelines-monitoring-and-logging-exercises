require "test_helper"

class CommentsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get comments_path
    assert_response :success
  end
end
