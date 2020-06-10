x = 10
puts x.odd? ? "odd" : "even"

######

# unless y
#   y = "default value"
# end
y ||= "default value"

puts y

######

a = 10
b = "default value"
nothing = nil

puts a || b
puts nothing || b

######

guest_name = "Balazs"
puts "Hello #{guest_name}" unless guest_name.empty?