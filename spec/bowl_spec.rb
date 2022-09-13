require 'rspec'
require_relative '..\Bowl'

describe 'bowling tests' do
    it 'when rolling a gutter game, the score will be 0' do
      bowler = Bowler.new
      bowler.roll(0)
      expect(bowler.score).to eq (0)
    end
    it 'when rolling a 2 and a 4, the score will be 6' do
      bowler = Bowler.new
      bowler.roll(2)
      bowler.roll(4)
      expect(bowler.score).to eq (6)
    end
    it 'when rolling a spare followed by 7 and 2, the score will be 28' do
      bowler = Bowler.new
      bowler.roll(7)
      bowler.roll(3)
      bowler.roll(7)
      bowler.roll(2)
      expect(bowler.score).to eq (26)
    end
end

