require_relative 'van'

class Garage

  attr_reader :vans, :bikes

  def initialize
    @vans = []
    @bikes = []
  end

  def dock(van)
    @vans << van
  end

  def release
    @vans.pop
  end

end
