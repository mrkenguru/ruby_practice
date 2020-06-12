class Dice

  def initialize
    roll
  end

  def roll
    @value = rand(6) + 1
    self
  end

  def to_s
    "[ #{@value} ]"
  end
end
