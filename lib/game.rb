require 'ship'

class Game
  attr_reader :rows
  attr_reader :cols
  def initialize(rows = 10, cols = 10)
    @rows = rows
    @cols = cols
    @players = [Player.new, Player.new]
    @turn = 0
  end

  def unplaced_ships
    @players[@turn].unplaced_ships
  end

  def place_ship(length:, orientation:, row:, col:)
    @players[turn].unplaced_ships.each do |ship|
      if ship.length == length
        length.times do |i|
          if orientation == :vertical
            ship.coords << [col, row + i]
          else
            ship.coords << [col + i, row]
          end
        end
        @players[turn].placed_ships << ship
        @players[turn].unplaced_ships.delete(ship)
        break
      end
    end
  end

  def ship_at?(x, y)
    @placed_ships.each do |ship|
      if ship.coords.include?([x, y])
        return true
      end
    end
    return false
  end
end
