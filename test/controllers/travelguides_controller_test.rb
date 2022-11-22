require "test_helper"

class TravelguidesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @travelguide = travelguides(:one)
  end

  test "should get index" do
    get travelguides_url
    assert_response :success
  end

  test "should get new" do
    get new_travelguide_url
    assert_response :success
  end

  test "should create travelguide" do
    assert_difference("Travelguide.count") do
      post travelguides_url, params: { travelguide: { admin_id: @travelguide.admin_id, blog_content: @travelguide.blog_content, blog_desc: @travelguide.blog_desc, blog_id: @travelguide.blog_id, blog_title: @travelguide.blog_title, date_published: @travelguide.date_published } }
    end

    assert_redirected_to travelguide_url(Travelguide.last)
  end

  test "should show travelguide" do
    get travelguide_url(@travelguide)
    assert_response :success
  end

  test "should get edit" do
    get edit_travelguide_url(@travelguide)
    assert_response :success
  end

  test "should update travelguide" do
    patch travelguide_url(@travelguide), params: { travelguide: { admin_id: @travelguide.admin_id, blog_content: @travelguide.blog_content, blog_desc: @travelguide.blog_desc, blog_id: @travelguide.blog_id, blog_title: @travelguide.blog_title, date_published: @travelguide.date_published } }
    assert_redirected_to travelguide_url(@travelguide)
  end

  test "should destroy travelguide" do
    assert_difference("Travelguide.count", -1) do
      delete travelguide_url(@travelguide)
    end

    assert_redirected_to travelguides_url
  end
end
