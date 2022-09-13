class Bowler
  attr_accessor :score

  def initialize()
    @score = 0
    @frameScore = 0
    @ball = 1
  end
  def roll(pins)
    if (@frameScore == (10))
      @score = @score + pins
    end
    case @ball
      when 1
        @frameScore = pins
        @ball = 2
      when 2
        @score = @score + @frameScore + pins
        puts(@score)
        @frameScore = @frameScore + pins
        @ball = 1
    end
  end
end
