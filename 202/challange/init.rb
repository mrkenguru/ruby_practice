#!/usr/bin/env ruby

require_relative 'classes/radio'

am = Radio.am
puts am.status
am.freq = 1200
am.increase_volume 3
am.increase_freq 120.5
puts am.status
am.decrease_volume 10
puts am.status
