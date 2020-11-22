require 'test_helper'

class ResultsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @result = results(:one)
  end

  test "should get index" do
    get fixtures_url
    assert_response :success
  end

  test "should get new" do
    get new_fixture_url
    assert_response :success
  end

  test "should create result" do
    assert_difference('Result.count') do
      post fixtures_url, params: {result: {ag: @result.ag, away: @result.away, hg: @result.hg, home: @result.home, time: @result.time } }
    end

    assert_redirected_to fixture_url(Result.last)
  end

  test "should show result" do
    get fixture_url(@result)
    assert_response :success
  end

  test "should get edit" do
    get edit_fixture_url(@result)
    assert_response :success
  end

  test "should update result" do
    patch fixture_url(@result), params: {result: {ag: @result.ag, away: @result.away, hg: @result.hg, home: @result.home, time: @result.time } }
    assert_redirected_to fixture_url(@result)
  end

  test "should destroy result" do
    assert_difference('Result.count', -1) do
      delete fixture_url(@result)
    end

    assert_redirected_to fixtures_url
  end
end
