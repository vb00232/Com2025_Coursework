require "application_system_test_case"

class AthletesTest < ApplicationSystemTestCase
  setup do
    @athlete = athletes(:one)
  end

  test "visiting the index" do
    visit athletes_url
    assert_selector "h1", text: "Athletes"
  end

  test "creating a Athlete" do
    visit athletes_url
    click_on "New Athlete"

    fill_in "Age", with: @athlete.age
    fill_in "Description", with: @athlete.description
    fill_in "Name", with: @athlete.name
    fill_in "Sex", with: @athlete.sex
    fill_in "Weight", with: @athlete.weight
    click_on "Create Athlete"

    assert_text "Athlete was successfully created"
    click_on "Back"
  end

  test "updating a Athlete" do
    visit athletes_url
    click_on "Edit", match: :first

    fill_in "Age", with: @athlete.age
    fill_in "Description", with: @athlete.description
    fill_in "Name", with: @athlete.name
    fill_in "Sex", with: @athlete.sex
    fill_in "Weight", with: @athlete.weight
    click_on "Update Athlete"

    assert_text "Athlete was successfully updated"
    click_on "Back"
  end

  test "destroying a Athlete" do
    visit athletes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Athlete was successfully destroyed"
  end
end