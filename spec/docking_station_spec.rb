require 'docking_station'
require 'support/shared_examples_for_bike_container'

describe DockingStation do

  it_behaves_like BikeContainer

  let(:station) { described_class.new }
  let(:bike)    { double("bike") }

  describe '#release' do

    it 'releases a working bike' do
      allow(bike).to receive(:broken?).and_return(false)
      station.dock(bike)
      station.release
      expect(station.bikes).not_to include(bike)
    end

    it 'raises error if there are no working bikes available' do
      allow(bike).to receive(:broken?).and_return(true)
      station.dock(bike)
      expect { station.release }.to raise_error("No working bikes available")
    end
  end

end
