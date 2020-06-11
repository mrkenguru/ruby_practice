#!/usr/bin/env ruby

TITLE = "Ruby Guessing Game"
HORIZONTAL_LINE = "-" * (TITLE.length + 4)
puts HORIZONTAL_LINE
puts "| #{TITLE} |"
puts HORIZONTAL_LINE

puts "What is your name?"
print "> "
player = gets.chomp
puts "\nHello, #{player}."

puts "\nWe are going to play a guessing game."

max_random_number = 10
max_guesses = 3

puts "I will choose a random number between 1 and #{max_random_number}"
puts "and you will have #{max_guesses} chances to guess it."

my_number = rand(max_random_number) + 1

puts "\nOkay, I have my number."

guess = nil

1.upto(max_guesses) do |i|
  print "Guess #{i}: "
  guess = gets.chomp.to_i

  if guess == my_number
    puts "Good guess!"
    break
  else
    puts "Sorry, that wasn't it."
  end
end

puts "\nThat was your last guess." unless guess == my_number

puts "\nMy number was #{my_number}."
puts "\n"
puts "Good bye!"
