require 'ship'

RSpec.describe Ship do
  context 'Creating a ship' do
    it "should return ship_class and length" do
      ship = Ship.new(ship_class: 'Cruiser', length: 3)
      expect(ship.ship_class).to eq 'Cruiser'
      expect(ship.length).to eq 3
    end
  end
  context 'Testing that two ships are the same' do
    it "should return ship_class and length" do
      ship1 = Ship.new(ship_class: 'Cruiser', length: 3)
      ship2 = Ship.new(ship_class: 'Cruiser', length: 3)
      expect(ship1 == ship2).to eq true
    end
  end
  context 'Checking if the ship is destroyed or not' do
    ship = Ship.new(ship_class: 'Cruiser', length: 3)
    it 'should return false' do
      expect(ship.destroyed?).to eq false
    end
    it 'should return true' do
      ship.hits = 3
      expect(ship.destroyed?).to eq true
    end
  end
end