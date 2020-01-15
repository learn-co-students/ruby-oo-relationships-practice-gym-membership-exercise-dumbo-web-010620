class Lifter
  attr_reader :name, :lift_total
  
  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total

    @@all << self
  end

  def self.all
    @@all
  end 

  def memberships
    Membership.all.select do |membership_instance|
      membership_instance.lifter == self 
    end # returns array of lifter's memberships
  end 

  def gyms 
    self.memberships.map(&:gym)
  end

  def self.avg_lift
    total_pounds_lifted = self.all.map(&:lift_total).reduce(:+)
    total_lifters = self.all.map(&:lift_total).length
    total_pounds_lifted / total_lifters 
  end 
  
  def cost_of_memberships
    self.memberships.map(&:cost).reduce(:+)
  end 

  def new_member(gym, cost)
    Membership.new(self, gym, cost)
  end 

end


# Lifter
# Get a list of all lifters
# Get a list of all the memberships that a specific lifter has
# Get a list of all the gyms that a specific lifter has memberships to
# Get the average lift total of all lifters
# Get the total cost of a specific lifter's gym memberships
# Given a gym and a membership cost, sign a specific lifter up for a new gym