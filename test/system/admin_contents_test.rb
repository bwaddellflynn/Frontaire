require "application_system_test_case"

class AdminContentsTest < ApplicationSystemTestCase
  setup do
    @admin_content = admin_contents(:one)
  end

  test "visiting the index" do
    visit admin_contents_url
    assert_selector "h1", text: "Admin contents"
  end

  test "should create admin content" do
    visit admin_contents_url
    click_on "New admin content"

    fill_in "Content", with: @admin_content.content
    fill_in "Header", with: @admin_content.header
    click_on "Create Admin content"

    assert_text "Admin content was successfully created"
    click_on "Back"
  end

  test "should update Admin content" do
    visit admin_content_url(@admin_content)
    click_on "Edit this admin content", match: :first

    fill_in "Content", with: @admin_content.content
    fill_in "Header", with: @admin_content.header
    click_on "Update Admin content"

    assert_text "Admin content was successfully updated"
    click_on "Back"
  end

  test "should destroy Admin content" do
    visit admin_content_url(@admin_content)
    click_on "Destroy this admin content", match: :first

    assert_text "Admin content was successfully destroyed"
  end
end
