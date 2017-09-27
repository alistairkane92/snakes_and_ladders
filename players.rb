class Player

  def initialize(name)
    @name = name
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
  end

end
