#!/usr/bin/env ruby

TITLE = "Fill Blanks Game"
HORIZONTAL_LINE = "-" * (TITLE.length + 4)
puts HORIZONTAL_LINE
puts "| #{TITLE} |"
puts HORIZONTAL_LINE

blanks = ["verb", "adjective", "adjective", "noun"]
blanks.map! do |word_type|
  article = word_type[0] == "a" ? "an" : "a"
  print "Give me #{article} #{word_type}: "
  user_response = gets.chomp
end

article = blanks[1][0] == "a" ? "an" : "a"

puts "I decided to #{blanks[0]} #{article} #{blanks[1]} party for my #{blanks[2]} #{blanks[3]}"
