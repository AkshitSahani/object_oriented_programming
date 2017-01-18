class Player
  attr_accessor :gold_coins, :health_points, :lives, :score, :level_up, :collect_treasure
  def initialize(gold_coins = 0, health_points = 10, lives = 5, score = 0)
    @gold_coins = gold_coins
    @health_points = health_points
    @lives = lives
    @score = score
  end

  def restart
    @gold_coins = 0
    @health_points = 10
    @lives = 5
    @score = 0
  end

  def do_battle
    if @lives == 0
      restart
    elsif @health_points == 0
      @lives -= 1 and @health_points = 10
    else
      @health_points -= 1
    end
  end

  def level_up
    @lives += 1
  end

  def collect_treasure(num)
    @gold_coins = @gold_coins + num
    if @gold_coins >= 10
      @score += 1 and @gold_coins = 0
    if @score == 10
      level_up and @score = 0
    end
  end
end
end
