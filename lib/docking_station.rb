require_relative 'bike'
require_relative 'bike_container'

class DockingStation
  include BikeContainer

  def dock(bike)
    add_bike(bike)
  end

  def release
    raise "No working bikes available" if working_bikes.empty?
    bikes.delete(working_bikes.pop)
  end

end
