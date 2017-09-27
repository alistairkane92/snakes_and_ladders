require 'minitest/autorun'
require 'minitest/rg'

require_relative '../board'


class TestBoard < MiniTest::Test

  def setup()
    @board1 = Board.new
  end

  def test_board_has_squares
    assert_equal([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30], @board1.squares)
  end

  def test_board_has_snakes
    assert_equal([{snake1:[17, 4]}, {snake2: [19, 7]}, {snake3: [21, 9]}, {snake4: [27, 1]}], @board1.snakes)
  end

end
