require 'test_helper'

class ResultsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @result = results(:one)
  end

  test 'should get index' do
    get fixtures_index_url
    assert_response :success
  end

end
