# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here

# Lifter.new(name, lift_total)

l1 = Lifter.new("Lifter 1", 100)
l2 = Lifter.new("Lifter 2", 200)
l3 = Lifter.new("Lifter 3", 300)

# Gym.new(name)
g1 = Gym.new("Blink")
g2 = Gym.new("Crunch")
g3 = Gym.new("Equinox")

# Membership.new(lifter, gym, cost)
m1 = Membership.new(l1, g1, 10)
m1 = Membership.new(l1, g2, 20)
m1 = Membership.new(l2, g1, 10)
m1 = Membership.new(l2, g3, 150)
m1 = Membership.new(l2, g2, 20)
m1 = Membership.new(l3, g1, 10)



# binding.pry

puts "Gains!"
