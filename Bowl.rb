class Bowler
  attr_accessor :score, :consecutiveStrikes, :frameScore

  def initialize()
    @score = 0
    @frameScore = 0
    @ball = 1
    @consecutiveStrikes = 0
    @addSecondBall = false
  end
  def score
    case @consecutiveStrikes
      when 1
        @score + 10 + @frameScore
      when 2
        @score + 20 + @frameScore
      when 3
        @score + 30
      else
        @score
    end
  end
  def roll(pins)
    if (@frameScore == (10) && @ball == 1 && @consecutiveStrikes == 0)
      @score = @score + pins
    end
    case @ball
      when 1
        @frameScore = pins
        @ball = 2
        if pins == (10) and @consecutiveStrikes < 3
          @ball = 1
          @consecutiveStrikes = @consecutiveStrikes + 1
        elsif pins == (10) and @consecutiveStrikes == 3
          @ball = 1
          @score += 30
        elsif @consecutiveStrikes == 3
          @score += 30
          @consecutiveStrikes = 2
        elsif @consecutiveStrikes == 2
          @score += 20 + pins
          @consecutiveStrikes = 1
        elsif @consecutiveStrikes == 1
          @score = @score + 10 + pins
          @consecutiveStrikes = 0
        end
      when 2
        @frameScore = @frameScore + pins
        if @consecutiveStrikes == 1
          @score = @score + @frameScore
          @consecutiveStrikes = 0
        end
        @score = @score + @frameScore
        @ball = 1
    end
  end
end
