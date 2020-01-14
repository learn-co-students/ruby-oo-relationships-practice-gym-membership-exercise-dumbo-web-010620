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
    Membership.all.select {|membership| membership.gym == self }
  end

  def lifters
    memberships.map(&:lifter)
  end

  def lifter_name
    lifters.map(&:name)
  end

  def total_lifter_lift
    lifters.map(&:lift_total).sum
  end
end
