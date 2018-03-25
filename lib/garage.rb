require_relative 'van'

class Garage

  attr_reader :vans, :bikes

  def initialize
    @vans = []
    @bikes = []
  end

  def store(van)
    @vans << van
  end

  def send
    @vans.pop
  end

  def dock(bike)
    if bike.status == 'in transit'
      bike.status = 'being fixed'
    end
    @bikes << bike
  end

  def release(bike)
    if bike.status == 'being fixed'
      bike.status = 'working'
    end
    @bikes.pop
  end

end
