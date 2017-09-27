class Board

  def initialize
    @squares = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30]
    @snakes = [{snake1:[17, 4]}, {snake2: [19, 7]}, {snake3: [21, 9]}, {snake4: [27, 1]}]
    @ladders = [{ladder1: [3, 22]}, {ladder2: [5, 8]}, {ladder3: [11, 26]}, {ladder4: [20, 29]}]
  end

  def squares()
    return @squares
  end

  def snakes
    return @snakes
  end


end
