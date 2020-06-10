5.downto(1) do |i|
  puts "Countdown: #{i}"
end
puts "done"

cart = ["apple", "banana", "carrot"]

cart.each do |item|
  puts "Item: #{item}"
end

cart.each { |item| puts "Item: #{item}"}
cart.each_index do |index|
  puts "Index: #{index}"
end

for item in cart
  puts "Item: #{item}"
end
