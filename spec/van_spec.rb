require 'van'
require 'support/shared_examples_for_bike_container'

describe Van do

  it_behaves_like BikeContainer

  let(:van)     { described_class.new }
  let(:station) { double("station") }
  let(:bike)    { double("bike") }

  describe '#unloads' do
    it 'unloads a broken bike from the docking station' do
      allow(station).to receive(:bikes).and_return([bike])
      allow(bike).to receive(:broken?).and_return(true)
      van.unload(station)
      expect(van.bikes).to include(bike)
    end

    it 'cannot unload a working bike from the docking station' do
      allow(station).to receive(:bikes).and_return([])
      expect { van.unload(station) }.to raise_error("No broken bikes available")
    end
  end

  describe '#re-stock' do
    it 're-stocks a working bike into the docking station' do
      allow(station).to receive(:bikes).and_return([bike])
      allow(bike).to receive(:broken?).and_return(true)
      van.unload(station)
      allow(bike).to receive(:broken?).and_return(false)
      van.re_stock(station)
      expect(van.bikes).to be_empty
    end

    it 'cannot re-stock docking station if the bikes have not been fixed yet' do
      allow(station).to receive(:bikes).and_return([bike])
      allow(bike).to receive(:broken?).and_return(true)
      van.unload(station)
      expect { van.re_stock(station) }.to raise_error("Bikes need to be fixed")
    end
  end

end
