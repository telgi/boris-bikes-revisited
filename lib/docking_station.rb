require_relative 'bike'

class DockingStation

  attr_reader :bikes
  attr_accessor :capacity

  DEFAULT_CAPACITY = 20

  def initialize(capacity = DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
  end

  def dock(bike)
    raise "There are no spaces available" if full?
    @bikes << bike
  end

  def release(bike)
    raise "There are no bikes available" if empty?
    raise "Bike is broken" if broken(bike)
    @bikes.pop
  end

  private

  def full?
    @bikes.length == @capacity
  end

  def empty?
    @bikes.empty?
  end

  def broken(bike)
    bike.status == "broken"
  end

end
