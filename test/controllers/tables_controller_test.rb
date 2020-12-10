require 'test_helper'

class TablesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @table = tables(:one)
  end

  test 'should get index' do
    get tables_index_url
    assert_response :success
  end

end
