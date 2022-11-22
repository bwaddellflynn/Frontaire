require "application_system_test_case"

class TravelguidesTest < ApplicationSystemTestCase
  setup do
    @travelguide = travelguides(:one)
  end

  test "visiting the index" do
    visit travelguides_url
    assert_selector "h1", text: "Travelguides"
  end

  test "should create travelguide" do
    visit travelguides_url
    click_on "New travelguide"

    fill_in "Admin", with: @travelguide.admin_id
    fill_in "Blog content", with: @travelguide.blog_content
    fill_in "Blog desc", with: @travelguide.blog_desc
    fill_in "Blog", with: @travelguide.blog_id
    fill_in "Blog title", with: @travelguide.blog_title
    fill_in "Date published", with: @travelguide.date_published
    click_on "Create Travelguide"

    assert_text "Travelguide was successfully created"
    click_on "Back"
  end

  test "should update Travelguide" do
    visit travelguide_url(@travelguide)
    click_on "Edit this travelguide", match: :first

    fill_in "Admin", with: @travelguide.admin_id
    fill_in "Blog content", with: @travelguide.blog_content
    fill_in "Blog desc", with: @travelguide.blog_desc
    fill_in "Blog", with: @travelguide.blog_id
    fill_in "Blog title", with: @travelguide.blog_title
    fill_in "Date published", with: @travelguide.date_published
    click_on "Update Travelguide"

    assert_text "Travelguide was successfully updated"
    click_on "Back"
  end

  test "should destroy Travelguide" do
    visit travelguide_url(@travelguide)
    click_on "Destroy this travelguide", match: :first

    assert_text "Travelguide was successfully destroyed"
  end
end
