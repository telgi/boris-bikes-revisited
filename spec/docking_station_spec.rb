require 'docking_station'

describe DockingStation do

  let(:station) { DockingStation.new }
  let(:bike)    { Bike.new }

  it 'is an empty container that will store `bikes`' do
    expect(station.bikes).to be_empty
  end

  describe '#dock' do
    it 'docks a bike into the docking station' do
      station.dock(bike)
      expect(station.bikes).to include(bike)
    end
  end

  describe '#release' do
    it 'releases a bike from the docking station' do
      station.dock(bike)
      station.release
      expect(station.bikes).not_to include(bike)
    end
  end

end
