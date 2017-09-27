require 'minitest/autorun'
require 'minitest/rg'

require_relative '../players'
require_relative '../dice'
require_relative '../board'
require_relative '../game'


class TestGame < MiniTest::Test

  def setup
    @player1 = Player.new("Alice")
    @player2 = Player.new("Bob")

    @dice1 = Dice.new

    @board1 = Board.new

    @game1 = Game.new("FirstGame", @board1, [@player1, @player2], @dice1)
  end

  def test_player_one_name
    assert_equal("Alice", @player1.name)
  end

  def test_dice_roll
    assert_includes(1..6, @dice1.roll)
  end

  # def test_board_has_snakes
  #   assert_equal([{snake1:[17, 4]}, {snake2: [19, 7]}, {snake3: [21, 9]}, {snake4: [27, 1]}], @board1.snakes)
  # end

  def test_game_name
    assert_equal("FirstGame", @game1.name)
  end

  def test_player_position
    assert_equal(0, @player1.position)
  end

  #player 1 move position
  def test_move_position

    expected = 1..6

    assert_includes(expected, @player1.move(@dice1.roll))
  end

  #check if on ladder
  def test_position_on_ladder
    @player1.move(5)
    @game1.on_ladder(@player1)

    assert_equal(8, @player1.position)
  end

  #check if on snake
  def test_position_on_snake
    @player1.move(17)
    @game1.on_snake(@player1)

    assert_equal(4, @player1.position)
  end

  #rolled a six
  # def test_player_turn
  #   @game1.take_turn(@player1)
  # end

  def test_is_won
    @player1.move(31)

    assert(@game1.is_won)
  end

  def test_is_won
    @player1.move(6)

    refute(@game1.is_won)
  end

  # def test_full_game
  #   while @game1.is_won !=true
  #     for player in @players
  #       @game1.take_turn(player)
  #     end
  #   end
  # puts "End of game"
  # end
  def test_full_game
    @game1.full_game
  end


end
