#!/usr/bin/env ruby

require 'date'

TITLE = "Birthday analyzer"
HORIZONTAL_LINE = "-" * (TITLE.length + 4)
puts HORIZONTAL_LINE
puts "| #{TITLE} |"
puts HORIZONTAL_LINE

DAYS = %w[Monday Tuesday Wednesday Thursday Friday Saturday Sunday]

puts "What year were you born?"
print "> "
year = gets.chomp.to_i

puts "What month were you born?"
print "> "
month = gets.chomp.to_i

puts "What date of the month were you born?"
print "> "
day = gets.chomp.to_i

birthday = Date.new(year, month, day)
day_of_week = DAYS[birthday.cwday - 1]

puts "-------------------------"
puts "You were born on #{day_of_week}."
puts "It was the #{birthday.cweek}. week of the year."
puts "It was the #{birthday.yday}. day of the year."
puts "You were born in a leap year." if birthday.leap?
puts "-------------------------"


