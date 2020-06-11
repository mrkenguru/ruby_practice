#!/usr/bin/env ruby
TITLE = "Pig Latin Game"
HORIZONTAL_LINE = "-" * (TITLE.length + 4)
puts HORIZONTAL_LINE
puts "| #{TITLE} |"
puts HORIZONTAL_LINE

VOWELS = %w[a e i o u]

def pig_latin_word(word = "")
  return if word.length == 0

  word.downcase!
  result = word.chars
  first_vowel_index = result.find_index { |letter| VOWELS.include?(letter) }

  if first_vowel_index || 0 > 0
    first_part = word.slice!(0...first_vowel_index)
    result = (word << first_part).chars
  end

  result.join << "ay"
end

def pig_latin_sentence(sentence)
  is_uppercase = ("A".."Z").include?(sentence[0])

  words = sentence.split(' ')

  words.map! { |word| pig_latin_word(word) }

  result = words.join(' ')
  result.downcase!.capitalize! if is_uppercase
  result
end

def str_pad(word, chars)
  "%-#{chars}.#{chars}s" % word
end

puts str_pad("pig", 10) + " => " + pig_latin_word("pig") #igpay
puts str_pad("latin", 10) + " => " + pig_latin_word("latin") #atinlay
puts str_pad("elevator", 10) + " => " + pig_latin_word("elevator") #elevatoray
puts str_pad("glove", 10) + " => " + pig_latin_word("glove") #oveglay
puts str_pad("where", 10) + " => " + pig_latin_word("where") #erewhay
puts
# puts pig_latin_sentence("Pig latin elevator game.")
puts "\n\n"

puts "Give me words which I can transform!"
puts "(type 'q' to quit)"

while true do
  print "\n> "
  word = (gets || "").chomp

  exit if word == 'q'

  puts pig_latin_word(word)
end

