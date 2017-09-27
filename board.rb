class Board

  def initialize
    @squares = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30]
    @snakes = [[17, -13], [19, -12], [21, -12],[27, -26]]
    @ladders = [[3, 19], [5, 3],[11, 15],[20, 9]]
  end

  def squares()
    return @squares
  end

  def snakes
    return @snakes
  end

  def ladders
    return @ladders
  end


end
