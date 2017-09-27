require 'minitest/autorun'
require 'minitest/rg'

require_relative '../dice'


class TestDice < MiniTest::Test

  def setup
    @dice1 = Dice.new
  end

  def test_sides
    expected = [1, 2, 3, 4, 5, 6]
    actual = @dice1.sides
    assert_equal(expected, actual)
  end

  def test_roll()
    assert_includes(1..6, @dice1.roll)
  end

end
