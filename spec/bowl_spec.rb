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
    it 'when rolling two spares and then a 6 and a gutter ball, the score will be correct' do
      bowler = Bowler.new
      bowler.roll(7)
      bowler.roll(3)
      bowler.roll(7)
      bowler.roll(3)
      bowler.roll(6)
      bowler.roll(0)
      expect(bowler.score).to eq (39)
    end
    it 'when rolling 8 in the first 9 frames and then getting a spare in the 10th frame, a 3rd ball is scored' do
      bowler = Bowler.new
      $i = 0
      while $i < 9
        bowler.roll(6)
        bowler.roll(2)
        $i += 1
      end
      bowler.roll(7)
      bowler.roll(3)
      bowler.roll(5)
      expect(bowler.score).to eq (87)
    end
    it 'when rolling a strike, the next two balls are added to the score' do
      bowler = Bowler.new
      bowler.roll(10)
      bowler.roll(6)
      bowler.roll(3)
      expect(bowler.score).to eq(25)
    end
    it 'when rolling a game of strikes (perfect game) the score is 300' do
      bowler = Bowler.new
      $i = 0
      while $i < 12
        bowler.roll(10)
        $i += 1
      end
      expect(bowler.score).to eq(300)
    end
    it 'when missing a perfect game on the last ball and scoring a 9, the score is 299' do
      bowler = Bowler.new
      $i = 0
      while $i < 11
        bowler.roll(10)
        $i += 1
      end
      bowler.roll(9)
      expect(bowler.score).to eq(299)
    end
    it 'when rolling two strikes and then a spare (3 7), the score is 43' do
      bowler = Bowler.new
      bowler.roll(10)
      bowler.roll(10)
      bowler.roll(3)
      bowler.roll(7)
      expect(bowler.score).to eq (43)
    end
    it 'when rolling two strikes and then a spare (3 7) and then a 7, the score is 57' do
      bowler = Bowler.new
      bowler.roll(10)
      bowler.roll(10)
      bowler.roll(3)
      bowler.roll(7)
      bowler.roll(7)
      bowler.roll(0)
      expect(bowler.score).to eq (57)
    end
    it 'when rolling two strikes and then a spare (3 7) and then a 7 and a 2, the score is 59' do
      bowler = Bowler.new
      bowler.roll(10)
      bowler.roll(10)
      bowler.roll(3)
      bowler.roll(7)
      bowler.roll(7)
      bowler.roll(2)
      expect(bowler.score).to eq (59)
    end
    it 'when missing a perfect game on the second to last ball and scoring a 3 and a 4, the score is 287' do
      bowler = Bowler.new
      $i = 0
      while $i < 10
        bowler.roll(10)
        $i += 1
      end
      bowler.roll(3)
      bowler.roll(4)
      expect(bowler.score).to eq(299)
    end
end

