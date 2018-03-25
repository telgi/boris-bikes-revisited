require_relative 'van'

class Garage

  attr_reader :vans

  def initialize
    @vans = []
  end

  def dock(van)
    @vans << van
  end

  def fix(bike)
    bike.report_fixed
  end

  def release
    @vans.pop
  end

end
