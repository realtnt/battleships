EMPTY = 0
HIT = 1
MISS = 2
CARRIER = 3
BATTLESHIP = 4
CRUISER = 5
SUBMARINE = 6
DESTROYER = 7

class Board
  attr_reader :board
  def initialize(rows=10, cols=10)
    @rows = rows
    @cols = cols
    @board = @rows.times.collect{[EMPTY] * @cols}
  end

  def check_shot(row, col) # row, col: Integers
    @board[row][col] == EMPTY ? MISS : @board[row][col]
  end

  def place_ship(type:, orientation:, row:, col:)

  end

  private

  def check_placement # length, row, col: Integers
    # orientation: v or h
    # if ship can be placed on the board
    # 1. check if ship overlaps with another ship
    # 2. check if ship would need to go beyond
    #     row 10 or col 10
  end

  def get_ship_coordinates
    length.map
  end
end