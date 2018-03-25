class Bike

  def report_broken
    @broken = true
  end

  def report_fixed
    @broken = false
  end

  def broken?
    @broken
  end

end
