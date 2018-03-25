require_relative 'van'
require_relative 'bike_container'

class Garage
  include BikeContainer

  attr_reader :vans

  def initialize
    @vans = []
  end

  def dock(bike)
    add_bike(bike)
  end

  def release
    remove_bike
  end

  def fix(bike)
    bike.fix
  end

end
