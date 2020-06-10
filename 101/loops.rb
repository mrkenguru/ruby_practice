
count = 5
loop do
  # count > 0 ? (puts "Countdown #{count}") : break
  break if count <= 0
  puts ".. #{count}"
  count -= 1
end
puts "done\n\n"

while count < 5
  puts "Countdown #{count+1}"
  count += 1
end
puts "done\n\n"

cart = ["apple", "banana", "carrot"]
until cart.empty?
  first = cart.shift
  puts first.upcase
end