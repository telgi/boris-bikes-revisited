class Van

  attr_reader :bikes
  attr_accessor :capacity

  DEFAULT_CAPACITY = 5

  def initialize(capacity = DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
  end

  def dock(bike)
    raise "Bike is working" if !bike.broken?
    raise "Capacity has been reached" if full?
    @bikes << bike
  end

  def release
    @bikes.pop
  end

  private

  def full?
    @bikes.length == DEFAULT_CAPACITY
  end

end
