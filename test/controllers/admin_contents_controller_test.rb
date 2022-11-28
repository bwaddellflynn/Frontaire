require "test_helper"

class AdminContentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_content = admin_contents(:one)
  end

  test "should get index" do
    get admin_contents_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_content_url
    assert_response :success
  end

  test "should create admin_content" do
    assert_difference("AdminContent.count") do
      post admin_contents_url, params: { admin_content: { content: @admin_content.content, header: @admin_content.header } }
    end

    assert_redirected_to admin_content_url(AdminContent.last)
  end

  test "should show admin_content" do
    get admin_content_url(@admin_content)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_content_url(@admin_content)
    assert_response :success
  end

  test "should update admin_content" do
    patch admin_content_url(@admin_content), params: { admin_content: { content: @admin_content.content, header: @admin_content.header } }
    assert_redirected_to admin_content_url(@admin_content)
  end

  test "should destroy admin_content" do
    assert_difference("AdminContent.count", -1) do
      delete admin_content_url(@admin_content)
    end

    assert_redirected_to admin_contents_url
  end
end
