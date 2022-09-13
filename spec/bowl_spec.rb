require 'rspec'
require_relative '..\Bowl'

describe 'bowling tests' do
  describe 'rolling a gutter game scores 0' do
    it 'returns 0 when rolling a gutter game' do
      bowler = Bowler.new
      expect(bowler.roll(0)).to eq (0)
    end
  end
end

