require 'minitest/autorun'
require 'minitest/rg'

require_relative '../players'
require_relative '../dice'


class TestPlayers < MiniTest::Test

  def setup()
    @player1 = Player.new("Alice")
    @player2 = Player.new("Bob")

    @dice1 = Dice.new
  end


  def test_player_has_name
    assert_equal("Alice", @player1.name)
  end

  def test_player_position
    assert_equal(0, @player1.position)
  end

  def test_player_move
    #for purposes of testing we are moving player 3 positions
    expected = 3

    assert_equal(expected, @player1.move(3))
  end

  def test_player_move_twice
    @player1.move(3)
    @player1.move(2)

    assert_equal(5, @player1.position)
  end

  # def test_player_roll_dice
  #   expected = 1..6
  #
  #   actual = @player1.roll
  #   assert_includes(expected, actual)
  # end

  def test_move_over_30
    @player1.move(25)
    @player1.move(6)
    assert_equal(25, @player1.position)
  end





end
