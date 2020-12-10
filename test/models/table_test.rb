require 'test_helper'

class TableTest < ActiveSupport::TestCase
  def setup
    @table = tables(:one)
  end

  test 'table row should be valid' do
    assert @table.valid?
  end

  test 'name should be not null' do
    assert_not @table.valid? if (@table.name = '')
  end

  test 'wins should be positive' do
    assert @table.valid? if @table.wins.positive?
  end

  test 'draws should be positive' do
    assert @table.valid? if @table.draws.positive?
  end

  test 'losses should be positive' do
    assert @table.valid? if @table.losses.positive?
  end

  test 'gf should be positive' do
    assert @table.valid? if @table.gf.positive?
  end

  test 'ga should be positive' do
    assert @table.valid? if @table.ga.positive?
  end
end
