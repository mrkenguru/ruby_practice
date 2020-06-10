PATTERN = "==+*~~*+=="
LINES = 20

puts "1st solution with loop"
iteration = 0
pattern = PATTERN
while iteration < LINES
  puts pattern
  first_char = pattern[0]
  pattern = pattern[1..-1] + first_char

  iteration += 1
end

puts "\n2nd solution with iteration"
pattern = []
PATTERN.each_char { |char| pattern << char }
# pattern = PATTERN.split('')
1.upto(LINES) do
  puts pattern.join
  first_char = pattern.shift
  pattern << first_char
end

