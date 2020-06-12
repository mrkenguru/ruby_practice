#!/usr/bin/env ruby

require_relative 'classes/dice'
require_relative 'classes/dice_set'

TITLE = "Dice roller"
HORIZONTAL_LINE = "-" * (TITLE.length + 4)
puts HORIZONTAL_LINE
puts "| #{TITLE} |"
puts HORIZONTAL_LINE

dice_set = DiceSet.new({number_of_dice: 3})
dice_set.display

while true
  puts
  puts "Type 'r' to roll again or 'q' to quit."
  print '> '
  action = gets.chomp

  exit if action == 'q'

  redo unless action == 'r'

  dice_set.roll
  dice_set.display
end
