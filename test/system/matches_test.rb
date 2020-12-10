require 'application_system_test_case'

class MatchesTest < ApplicationSystemTestCase
  setup do
    @match = matches(:one)
  end

  test 'visiting the index' do
    visit matches_index_url
    assert_selector 'h1', text: 'Matches'
  end
end
