require_relative 'bike'
require_relative 'bike_container'

class DockingStation
  include BikeContainer

  def dock(bike)
    add_bike(bike)
  end

  def release(bike)
    raise "Bike is broken" if bike.broken?
    remove_bike
  end

end
