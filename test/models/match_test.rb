require 'test_helper'

class MatchTest < ActiveSupport::TestCase
  def setup
    @match = matches(:one)
  end

  test 'match should be valid' do
    assert @match.valid?
  end

  test 'home should be valid' do
    assert_not @match.valid? if (@match.home = '')
  end

  test 'away should be valid' do
    assert_not @match.valid? if (@match.away = '')
  end

  test 'time should be valid' do
    assert_not @match.valid? if (@match.time = '')
  end
end
