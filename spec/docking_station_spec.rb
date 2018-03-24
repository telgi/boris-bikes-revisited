require 'docking_station'

describe DockingStation do

  let(:station) { described_class.new }

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
      bike = double("bike")
      station.dock(bike)
      expect(station.bikes).to include(bike)
    end

    it 'cannot dock a bike if capacity has been reached' do
      bike = double("bike")
      subject.capacity.times { station.dock(bike) }
      expect { station.dock(bike) }.to raise_error("There are no spaces available")
    end
  end

  describe '#release' do
    it 'releases a bike from the docking station' do
      bike = double("bike")
      allow(bike).to receive(:status)
      station.dock(bike)
      station.release(bike)
      expect(station.bikes).not_to include(bike)
    end

    it 'cannot release a bike if there are none available' do
      bike = double("bike")
      expect { station.release(bike) }.to raise_error("There are no bikes available")
    end
  end

  context 'when bike is broken' do

    it 'docks a bike even if it is reported as `broken`' do
      bike = double("bike")
      allow(bike).to receive(:report_broken)
      station.dock(bike)
      expect(station.bikes).to include(bike)
    end

    it 'cannot release a bike if the bike is broken' do
      bike = double("bike")
      allow(bike).to receive(:status).and_return("broken")
      allow(bike).to receive(:report_broken)
      station.dock(bike)
      expect { station.release(bike) }.to raise_error("Bike is broken")
    end

  end

end
