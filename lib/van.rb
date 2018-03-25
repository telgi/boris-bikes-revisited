class Van

  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def dock(bike)
    raise "Bike is working" if !bike.broken?
    @bikes << bike
  end

  def release
    @bikes.pop
  end

end
