require 'test_helper'

class MatchesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @match = matches(:one)
  end

  test 'should get index' do
    get matches_index_url
    assert_response :success
  end

end
