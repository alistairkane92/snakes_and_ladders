require 'minitest/autorun'
require 'minitest/rg'

require_relative '../board'


class TestBoard < MiniTest::Test

  def setup()
    @board1 = Board.new
  end

  def test_board_has_snakes
    assert_equal([{snake1:[17, -13]}, {snake2: [19, -12]}, {snake3: [21, -12]}, {snake4: [27, -26]}], @board1.snakes)
  end

end
