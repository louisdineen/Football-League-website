require 'test_helper'

class ResultTest < ActiveSupport::TestCase
  def setup
    @result = results(:one)
  end

  test 'result should be valid' do
    assert @result.valid?
  end

  test 'home should be not null' do
    assert_not @result.valid? if (@result.home = '')
  end

  test 'away should be not null' do
    assert_not @result.valid? if (@result.away = '')
  end

  test 'hg should be positive' do
    assert @result.valid? if @result.hg.positive?
  end

  test 'ag should be positive' do
    assert @result.valid? if @result.ag.positive?
  end

  test 'time should be not null' do
    assert_not @result.valid? if (@result.time = '')
  end
end
