require "application_system_test_case"

class ResultsTest < ApplicationSystemTestCase
  setup do
    @result = results(:one)
  end

  test "visiting the index" do
    visit fixtures_index_url
    assert_selector "h1", text: "Results"
  end
end
