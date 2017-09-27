class Board

  def initialize
    @snakes = [[17, -13], [19, -12], [21, -12],[27, -26]]
    @ladders = [[3, 19], [5, 3],[11, 15],[20, 9]]
  end


  def snakes
    return @snakes
  end

  def ladders
    return @ladders
  end


end
