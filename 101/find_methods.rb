#!/usr/bin/env ruby

puts fruits = ['apple', 'banana', 'pear', 'papaya'].find { |fruit| fruit.count('a') > 1 }
# banana

puts fruits = ['apple', 'banana', 'pear', 'papaya'].select { |fruit| fruit.count('a') > 1 }.join(' ')
# banana papaya

puts even_numbers = [*1..10].delete_if { |n| n % 2 == 1 }.join(' ')
# 2 4 6 8 10

cart = {apple: 0, banana: 2, pear: 1, papaya: 0}
puts cart.find_all { |k, v| v < 1 }.join(' ')
# apple 0 papaya 0

puts (1..10).any? { |n| n % 3 == 0 }
# true

puts (1..10).find { |n| n % 3 == 0 }
# 3
