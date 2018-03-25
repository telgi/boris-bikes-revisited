require 'docking_station'
require 'support/shared_examples_for_bike_container'

describe DockingStation do

  it_behaves_like BikeContainer

  let(:station) { described_class.new }
  let(:bike)    { double("bike") }

  describe '#dock' do
    it 'docks a bike into the docking station' do
      station.dock(bike)
      expect(station.bikes).to include(bike)
    end

    it 'cannot dock a bike if capacity has been reached' do
      subject.capacity.times { station.dock(bike) }
      expect { station.dock(bike) }.to raise_error("#{described_class.name} full")
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
      allow(bike).to receive(:broken?).and_return(false)
      station.dock(bike)
      station.release(bike)
      expect { station.release(bike) }.to raise_error("#{described_class.name} empty")
    end
  end

  context 'when bike is broken' do

    it 'docks a bike even if it is reported as `broken`' do
      allow(bike).to receive(:broken?).and_return(true)
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
