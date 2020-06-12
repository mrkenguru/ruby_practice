#!/usr/bin/env ruby

require_relative 'classes/animal'

puts Animal.species.join(', ')

pig = Animal.create_a_pig
puts "#{pig.noise} - #{pig.color}"

puts "Number of animals: #{Animal.total_animals}"

