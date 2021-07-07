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
    Membership.all.select { |membership| membership.lifter == self }
  end

  def gyms
    memberships.map(&:gym)
  end

  def avg_lift_total
    total_lift = all.map(&:lift_total)
    all_lifters = all.length
    (total_lift/all_lifters).to_f
  end

  def total_gym_costs
    memberships.map(&:cost)

  def sign_up(gym, cost)
    Membership.new(cost, self, gym)
  end

end
