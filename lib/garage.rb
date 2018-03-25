require_relative 'van'
require_relative 'bike'

class Garage

  attr_reader :vans, :bikes

  def initialize
    @vans = []
    @bikes = []
  end

  def unload(van)
    raise "No broken bikes available" if broken_bikes(van).empty?
    bikes << van.bikes.delete(broken_bikes(van).pop)
  end

  def dock(van)
    vans << van
  end

  def re_stock(van)
    raise "Bikes need to be fixed" if working_bikes.empty?
    van.bikes << bikes.delete(working_bikes.pop)
  end

  def release
    vans.pop
  end

  def fix_bikes
    bikes.each { |bike| bike.fix }
  end

  private

  def broken_bikes(van)
    van.bikes.select { |bike| bike.broken? }
  end

  def working_bikes
    bikes.reject { |bike| bike.broken? }
  end

end
