#!/usr/bin/env ruby

x = [*1..5]
y = x.map { |n| n + 1 }
puts x.join
puts y.join

scores = {min: 2, avg: 5, max: 8}
adjusted_scores = scores.map do |key, value|
  "#{key.capitalize}: #{value * 100}"
end
puts adjusted_scores.join(' ')

fruits = ['apple', 'banana', 'pear', 'papaya'].map do |fruit|
  if fruit == 'banana'
    fruit.capitalize
  else
    #fruit
  end
end
puts fruits.join
# nil Banana nil nil
