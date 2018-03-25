require_relative 'docking_station'
require_relative 'bike'
require_relative 'bike_container'

class Van
  include BikeContainer

  def unload(station)
    raise "No broken bikes available" if broken_bikes(station).empty?
    bikes << station.bikes.delete(broken_bikes(station).pop)
  end

  def re_stock(station)
    raise "Bikes need to be fixed" if working_bikes.empty?
    station.bikes << bikes.delete(working_bikes.pop)
  end

  private

  def broken_bikes(station)
    station.bikes.select { |bike| bike.broken? }
  end

end
