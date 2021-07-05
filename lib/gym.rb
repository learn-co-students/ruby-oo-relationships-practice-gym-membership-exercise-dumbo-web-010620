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

  def membership_gym
    Membership.all.select {|x| x.gym == self}
  end

  def specific_gym_mem
    membership_gym.map(&:lifter)
  end

  def specific_name
    specific_gym_mem.map(&:name)
  end

  def combined_total
    specific_gym_mem.map(&:lift_total).sum
  end
end
