require "application_system_test_case"

class ResultsTest < ApplicationSystemTestCase
  setup do
    @result = results(:one)
  end

  test "visiting the index" do
    visit fixtures_url
    assert_selector "h1", text: "Results"
  end

  test "creating a Result" do
    visit fixtures_url
    click_on "New Result"

    fill_in "Ag", with: @result.ag
    fill_in "Away", with: @result.away
    fill_in "Hg", with: @result.hg
    fill_in "Home", with: @result.home
    fill_in "Time", with: @result.time
    click_on "Create Result"

    assert_text "Result was successfully created"
    click_on "Back"
  end

  test "updating a Result" do
    visit fixtures_url
    click_on "Edit", match: :first

    fill_in "Ag", with: @result.ag
    fill_in "Away", with: @result.away
    fill_in "Hg", with: @result.hg
    fill_in "Home", with: @result.home
    fill_in "Time", with: @result.time
    click_on "Update Result"

    assert_text "Result was successfully updated"
    click_on "Back"
  end

  test "destroying a Result" do
    visit fixtures_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Result was successfully destroyed"
  end
end
