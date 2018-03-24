require_relative 'bike'

class DockingStation

  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def dock(bike)
    @bikes << bike
  end

  def release
    raise "There are no bikes available" if @bikes.empty?
    @bikes.pop
  end

end
