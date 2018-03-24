class Van

  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def dock(bike)
    @bikes << bike
  end

end
