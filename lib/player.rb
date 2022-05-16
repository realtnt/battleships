class Player
  attr_accessor :name
  attr_reader :placement_board
  attr_reader :shots_board 
  attr_accessor :unplaced_ships
  attr_accessor :places_ships

  def initialize(name) # name of type String
    @name = name
    @ships = [] # type of Ship
    @wins = 0
    @ships_in_game = 5
    @placement_board = Board.new
    @shots_board = Board.new
    @unplaced_ships = [
      @ship.new(ship_class: 'Carrier', length: 5), 
      @ship.new(ship_class: 'Battleship', length: 4),
      @ship.new(ship_class: 'Cruiser', length: 3), 
      @ship.new(ship_class: 'Submarine', length: 3), 
      @ship.new(ship_class: 'Destroyer', length: 2)
    ]
    @placed_ships = []
  end

  def shoot(x, y) # x, y: Integers
    # returns 'hit', 'miss' or name of ship, if it
    # was sank.
  end

  def check_opponents_shot(x, y)
    # checks whether
  end
end