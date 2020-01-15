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

  def lifter_membership
    Membership.all.select { |x| x.lifter == self}
  end

  def specific_membership
    lifter_membership.map(&:gym)
  end

  def self.avg_lift
    (self.all.map {|x| x.lift_total}.sum) / self.all.count
  end

  def total_cost
    lifter_membership.map(&:cost).sum
  end

  def sign_up(gym,membership_cost)
  
  end
end
