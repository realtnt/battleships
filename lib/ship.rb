class Ship
  attr_reader :ship_class
  attr_reader :length
  attr_accessor :coords
  attr_accessor :hits

  def initialize(ship_class:, length:)
    @ship_class = ship_class
    @length = length
    @coords = []
    @hits = 0
  end

  def ==(ship)
    @ship_class == ship.ship_class
  end

  def destroyed?
    hits == @length
  end
end

