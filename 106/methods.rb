#!/usr/bin/env ruby

def starts_with_vowel?(word)
  vowels = %w[a e i o u]
  vowels.include?(word[0])
end

puts starts_with_vowel?("awesome")