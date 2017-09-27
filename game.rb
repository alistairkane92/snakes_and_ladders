class Game
  def initialize(name, board, players, dice)
    @name = name
    @board = board
    @players = players
    @dice = dice
  end

  def name
    return @name
  end

  def on_ladder(player)
    for ladder in @board.ladders
      if player.position == ladder.first
        puts "#{player.name} hit a ladder :)"
        player.move(ladder.last)
      end
    end
  end

  def on_snake(player)
    for snake in @board.snakes
      if player.position == snake.first
        puts "#{player.name} hit a snake :("
        player.move(snake.last)
      end
    end
  end

  def take_turn(player)
    turnroll = @dice.roll
    puts "#{player.name} rolled a #{turnroll}."
    player.move(turnroll)
    on_ladder(player)
    on_snake(player)
    puts "#{player.name} is at #{player.position}"
    if turnroll == 6 && player.position <= 30
      take_turn(player)
    end
  end

  def is_won
      return true if @players.first.position  >= 30 || @players.last.position >= 30
      return false
  end

  def full_game
    while is_won != true
      for player in @players
          take_turn(player)
          break if is_won
      end

    end
  puts "End of game"
  end




end
