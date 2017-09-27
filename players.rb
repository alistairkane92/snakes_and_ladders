class Player

  def initialize(name)
    @name = name
    @dice = @dice1
    @position = 0
  end

  def name
    return @name
  end

  def position
    return @position
  end

  def move(roll)
    @position += roll
    return @position
  end

  # def roll
  #   return @dice.roll
  # end

end
