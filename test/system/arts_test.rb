require "application_system_test_case"

class ArtsTest < ApplicationSystemTestCase
  setup do
    @art = arts(:one)
  end

  test "visiting the index" do
    visit arts_url
    assert_selector "h1", text: "Arts"
  end

  test "creating a Arts" do
    visit arts_url
    click_on "New Arts"

    fill_in "Artist", with: @art.artist
    fill_in "Date", with: @art.date
    fill_in "Description", with: @art.description
    fill_in "Photo", with: @art.photo
    fill_in "Place", with: @art.place
    fill_in "Reference", with: @art.reference
    fill_in "Size", with: @art.size
    fill_in "Technic", with: @art.technic
    fill_in "Title", with: @art.title
    click_on "Create Arts"

    assert_text "Arts was successfully created"
    click_on "Back"
  end

  test "updating a Arts" do
    visit arts_url
    click_on "Edit", match: :first

    fill_in "Artist", with: @art.artist
    fill_in "Date", with: @art.date
    fill_in "Description", with: @art.description
    fill_in "Photo", with: @art.photo
    fill_in "Place", with: @art.place
    fill_in "Reference", with: @art.reference
    fill_in "Size", with: @art.size
    fill_in "Technic", with: @art.technic
    fill_in "Title", with: @art.title
    click_on "Update Arts"

    assert_text "Arts was successfully updated"
    click_on "Back"
  end

  test "destroying a Arts" do
    visit arts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Arts was successfully destroyed"
  end
end
