#!/usr/bin/env ruby

h1 = {a: 2, b: 4, c: 5}
h2 = {a: 3, b: 4, d: 8}

puts h1.merge(h2)
# {:a=>3, :b=>4, :c=>5, :d=>8}
puts h1.merge(h2) { |key, old, new| old < new ? old : new }
# {:a=>2, :b=>4, :c=>5, :d=>8}

