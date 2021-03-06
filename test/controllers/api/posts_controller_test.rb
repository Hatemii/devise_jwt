require "test_helper"

class Api::PostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @api_post = api_posts(:one)
  end

  test "should get index" do
    get api_posts_url, as: :json
    assert_response :success
  end

  test "should create api_post" do
    assert_difference("Api::Post.count") do
      post api_posts_url, params: { api_post: { content: @api_post.content, title: @api_post.title } }, as: :json
    end

    assert_response :created
  end

  test "should show api_post" do
    get api_post_url(@api_post), as: :json
    assert_response :success
  end

  test "should update api_post" do
    patch api_post_url(@api_post), params: { api_post: { content: @api_post.content, title: @api_post.title } }, as: :json
    assert_response :success
  end

  test "should destroy api_post" do
    assert_difference("Api::Post.count", -1) do
      delete api_post_url(@api_post), as: :json
    end

    assert_response :no_content
  end
end
