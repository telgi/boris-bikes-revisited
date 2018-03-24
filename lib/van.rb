class Van

  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def dock(bike)
    raise "Bike is working" if working(bike)
    if bike.status == 'broken'
      bike.status = 'in transit'
    end
    @bikes << bike
  end

  def release
    @bikes.pop
  end

  private
  
  def working(bike)
    bike.status == "working"
  end

end
