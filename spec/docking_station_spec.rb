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

    it 'cannot dock a bike if capacity has been reached' do
      DockingStation::CAPACITY.times { station.dock(bike) }
      expect { station.dock(bike) }.to raise_error("There are no spaces available")
    end
  end

  describe '#release' do
    it 'releases a bike from the docking station' do
      station.dock(bike)
      station.release
      expect(station.bikes).not_to include(bike)
    end

    it 'cannot release a bike if there are none available' do
      expect { station.release }.to raise_error("There are no bikes available")
    end
  end

end
