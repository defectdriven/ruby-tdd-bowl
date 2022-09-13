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
  describe 'rolling a spare followed by a 7 and a 2 will show score of 28' do
    it 'when rolling a spare followed by 7 and 2, the score will be 28' do
      bowler = Bowler.new
      bowler.roll(7)
      bowler.roll(3)
      bowler.roll(7)
      bowler.roll(2)
      expect(bowler.score).to eq (28)
    end
  end
end

