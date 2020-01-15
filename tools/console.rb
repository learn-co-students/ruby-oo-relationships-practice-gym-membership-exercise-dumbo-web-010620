# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here
l1 = Lifter.new('Weng', 1000)
l2 = Lifter.new('Eric', 600)
l3 = Lifter.new('Allen', 700)

g1 = Gym.new("Dolphin")
g2 = Gym.new("NYSC")
g3 = Gym.new("Blink")

m1 = Membership.new(100,g1,l1)
m2 = Membership.new(200,g2,l1)
m3 = Membership.new(300,g3,l1)
m4 = Membership.new(100,g1,l2)
m5 = Membership.new(200,g2,l3)
m6 = Membership.new(100,g1,l3)

binding.pry

puts "Gains!"
