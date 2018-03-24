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

  def release
    raise "There are no bikes available" if empty?
    @bikes.pop
  end

  private

  def full?
    @bikes.length == @capacity
  end

  def empty?
    @bikes.empty?
  end

end
