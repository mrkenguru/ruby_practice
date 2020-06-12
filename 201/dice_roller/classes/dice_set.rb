require_relative 'dice'

class DiceSet

  def initialize(options = {})
    @dice = []
    (options[:number_of_dice] || 2).times { init_new_dice }
  end

  def roll
    @dice.map! { |d| d.roll }
  end

  def display
    puts @dice.map { |d| d.to_s }.join(" - ")
  end

  private

  def init_new_dice
    @dice << Dice.new
  end
end

