require 'rspec'
require_relative '..\Bowl'

describe 'bowling tests' do
  describe 'rolling a gutter game scores 0' do
    it 'when rolling a gutter game, the score will be 0' do
      bowler = Bowler.new
      bowler.roll(0)
      expect(bowler.score).to eq (0)
    end
  end
  describe 'rolling a 2 and a 4 results in a score of 6' do
    it 'when rolling a 2 and a 4, the score will be 6' do
      bowler = Bowler.new
      bowler.roll(2)
      bowler.roll(4)
      expect(bowler.score).to eq (6)
    end
  end
end

