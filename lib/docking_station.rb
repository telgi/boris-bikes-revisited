require_relative 'bike'

class DockingStation

  attr_reader :bikes

  CAPACITY = 20

  def initialize
    @bikes = []
  end

  def dock(bike)
    raise "There are no spaces available" if @bikes.length == CAPACITY
    @bikes << bike
  end

  def release
    raise "There are no bikes available" if @bikes.empty?
    @bikes.pop
  end

end
