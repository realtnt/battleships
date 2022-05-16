require 'board'

RSpec.describe Board do
  context 'When checking a shot on an empty board' do
    board = Board.new
    it "should return MISS" do
      expect(board.check_shot(1, 1)).to eq MISS
    end
  end
end