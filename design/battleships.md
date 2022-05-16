# Ordering System Design

## 1. Describe the Problem

_Put or write the user story here. Add any clarifying notes you might have._

# Battleships Project

## User Stories

```
> As a player
> So that I can prepare for the game
> I would like to place a ship in a board location

> As a player
> So that I can play a more interesting game
> I would like to have a range of ship sizes to choose from

As a player
So the game is more fun to play
I would like a nice command line interface that lets me enter ship positions and
shots using commands (rather than using IRB to interact with objects)

? As a player
? So that I can create a layout of ships to outwit my opponent
? I would like to be able to choose the directions my ships face in

As a player
So that I can have a coherent game
I would like ships to be constrained to be on the board

As a player
So that I can have a coherent game
I would like ships to be constrained not to overlap

As a player
So that I can win the game
I would like to be able to fire at my opponent's board

As a player
So that I can refine my strategy
I would like to know when I have sunk an opponent's ship

As a player
So that I know when to finish playing
I would like to know when I have won or lost

As a player
So that I can consider my next shot
I would like to be able to see my hits and misses so far

As a player
So that I can play against a human opponent
I would like to play a two-player game
```


## 2. Design the Class System

_Consider diagramming out the classes and their relationships. Take care to
focus on the details you see as important, not everything. The diagram below
uses asciiflow.com but you could also use excalidraw.com, draw.io, or miro.com_

```


```

_Also design the interface of each class in more detail._

```ruby

###

class Game
  attr_reader :rows
  attr_reader :cols
  attr_reader :unplaced_ships
  
  def initialize(ship = Ship, rows = 10, cols = 10)
  end

  def place_ship(length:, orientation:, row:, col:)
  end

  def ship_at?(x, y)
  end
end

###

class UserInterface
  def initialize(io, game)
    @io = io
    @game = game
  end

  def run
    # starts the game loop
  end

  private

  def show(message) # message is of type String
    # prints out message
  end

  def prompt(message) # message is of type String
    # prints out message and
    # returns the user's input as String
  end

  def ships_unplaced_message
    # returns the number of ships that have not yet
    # been placed on the board
  end

  def prompt_for_ship_placement
    # gets the information need to place a ship
    # from the user and places it on the board
  end

  def format_board
    # renders the board
  end

  def prompt_for_player_name
    # get name and pass it to @game.<player>.name
  end
end

###

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
    @ship_class == ship.ship_class && @player == ship.player
  end

  def destroyed?
    # check if ship has been destroyed
  end
end

###

class Player
  attr_reader :name

  def initialize(name) # name of type String
    @name = name
    @ships = [] # type of Ship
    @ships_still_alive = 5
    @placement_board = Board.new
    @shots_board = Board.new
  end

  def shoot(x, y) # x, y: Integers
    # returns 'hit', 'miss' or name of ship, if it
    # was sank.
  end

  def check_opponents_shot(x, y)
  end

  private

  def set_ship_coordinates
    # set the ship coordinates
  end

  def update_placement_board
    # update board with
  end

end

###

# CLASS BOARD 

EMPTY = 0
HIT = 1
MISS = 2
CARRIER = 3
BATTLESHIP = 4
CRUISER = 5
SUBMARINE = 6
DESTROYER = 7

class Board
  def initialize(rows=10, cols=10)
    @rows = rows
    @cols = cols
    @board = @rows.times.collect{[EMPTY] * @cols}
  end

  def check_shot(row, col) # row, col: Integers
    # if ship exists at coordinates(row, col)
    # return HIT or, 
    # if the ship has been destroyed
    # return CARRIER, BATTLESHIP,...
    # return MISS if there's no hit
  end

  def check_placement(length, row, col) # row, col: Integers
    # if ship can be placed on the board
    # 1. check if ship overlaps with another ship
    # 2. check if ship would need to go beyond
    #     row 10 or col 10
  end
end

###

class BoardRenderer
  def initialize(board) # board is of type Board
    @board = board
  end

  def render
    # renders the board on the screen
  end
end

```

## 3. Create Examples as Integration Tests

_Create examples of the classes being used together in different situations and
combinations that reflect the ways in which the system will be used._

```ruby
# EXAMPLE



```

## 4. Create Examples as Unit Tests

_Create examples, where appropriate, of the behaviour of each relevant class at
a more granular level of detail._

```ruby
# EXAMPLE

# class DeliveryTime
delivery_time = DeliveryTime.new
delivery_time.get_delivery_time 
# => 30mins between 5pm-7pm, 45mins 7pm-9pm, 35mins 9pm-11pm


```

_Encode each example as a test. You can add to the above list as you go._

## 5. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green,
refactor to implement the behaviour._
