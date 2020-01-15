class Gym
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name

    @@all << self
  end

  def self.all 
    @@all 
  end

  def memberships
    Membership.all.select do |membership|
      membership.gym == self 
    end  # array of memberships of one gym
  end 

  def lifters 
    self.memberships.map(&:lifter)
  end

  def lifter_names
    self.lifters.map(&:name)
  end 

  def combined_lift_total
    self.lifters.map(&:lift_total).reduce(:+)
  end 

end
