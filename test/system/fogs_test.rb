require "application_system_test_case"

class FogsTest < ApplicationSystemTestCase
  setup do
    @fog = fogs(:one)
  end

  test "visiting the index" do
    visit fogs_url
    assert_selector "h1", text: "Fogs"
  end

  test "creating a Fog" do
    visit fogs_url
    click_on "New Fog"

    fill_in "Name", with: @fog.name
    fill_in "Words", with: @fog.words
    click_on "Create Fog"

    assert_text "Fog was successfully created"
    click_on "Back"
  end

  test "updating a Fog" do
    visit fogs_url
    click_on "Edit", match: :first

    fill_in "Name", with: @fog.name
    fill_in "Words", with: @fog.words
    click_on "Update Fog"

    assert_text "Fog was successfully updated"
    click_on "Back"
  end

  test "destroying a Fog" do
    visit fogs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Fog was successfully destroyed"
  end
end
