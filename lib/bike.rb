class Bike

  attr_accessor :status

  def initialize
    @status = "working"
  end

  def report_broken
    @status = "broken"
  end

end
