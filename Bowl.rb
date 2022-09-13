class Bowler
  attr_accessor :score

  def initialize()
    @score = 0
  end
  def roll(pins)
    @score = @score + pins
  end
end
