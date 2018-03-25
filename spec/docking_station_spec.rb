require 'docking_station'

describe DockingStation do

  let(:station) { described_class.new }
  let(:bike)    { double("bike") }

  describe 'initialization' do

    it 'creates an empty container that will store `bikes`' do
      expect(station.bikes).to be_empty
    end

    it 'defaults capacity to `20`' do
      expect(station.capacity).to equal(DockingStation::DEFAULT_CAPACITY)
    end

    it 'allows capacity to change based on user demand' do
      bigger_station = DockingStation.new(30)
      expect(bigger_station.capacity).to equal(30)
    end

  end

  describe '#dock' do
    it 'docks a bike into the docking station' do
      station.dock(bike)
      expect(station.bikes).to include(bike)
    end

    it 'cannot dock a bike if capacity has been reached' do
      subject.capacity.times { station.dock(bike) }
      expect { station.dock(bike) }.to raise_error("There are no spaces available")
    end
  end

  describe '#release' do
    it 'releases a bike from the docking station' do
      allow(bike).to receive(:broken?).and_return(false)
      station.dock(bike)
      station.release(bike)
      expect(station.bikes).not_to include(bike)
    end

    it 'cannot release a bike if there are none available' do
      expect { station.release(bike) }.to raise_error("There are no bikes available")
    end
  end

  context 'when bike is broken' do

    it 'docks a bike even if it is reported as `broken`' do
      allow(bike).to receive(:status)
      station.dock(bike)
      expect(station.bikes).to include(bike)
    end

    it 'cannot release a bike if the bike is broken' do
      allow(bike).to receive(:broken?).and_return(true)
      station.dock(bike)
      expect { station.release(bike) }.to raise_error("Bike is broken")
    end

  end

end
