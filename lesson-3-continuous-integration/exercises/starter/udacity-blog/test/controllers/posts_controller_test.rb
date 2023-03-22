require "test_helper"

class PostsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get posts_path
    assert_response :success
    assert_select "h1", "PostsController #index Action"
    assert_select "p", "Find me in app/views/posts/index.html.erb"
  end
end