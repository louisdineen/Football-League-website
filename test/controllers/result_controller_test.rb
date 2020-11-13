require 'test_helper'

class ResultControllerTest < ActionDispatch::IntegrationTest
  test "should get Result" do
    get result_Result_url
    assert_response :success
  end

end
