require 'test_helper'

class WelcomeControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get welcome_index_url
    assert_response :success
  end

  test 'should get contact' do
    get contact_url
    assert_response :success

    assert_template layout: 'application'
    assert_select 'title', 'Football Leagues'
    assert_select 'h1', 'Contact Us'
    assert_select 'p', 'Complete the following form to get in touch with us.'
  end
end
