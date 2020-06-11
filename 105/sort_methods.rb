#!/usr/bin/env ruby

array = [5, 8, 2, 6, 1, 3]
puts x = array.sort { |v1, v2| v2 <=> v1 }.join(', ')
