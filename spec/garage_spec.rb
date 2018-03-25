require 'garage'

describe Garage do

  let(:garage) { described_class.new }
  let(:van)    { double("van") }
  let(:bike)   { double("bike") }

  describe '#unloads' do
    it 'unloads a broken bike from the van' do
      allow(van).to receive(:bikes).and_return([bike])
      allow(bike).to receive(:broken?).and_return(true)
      garage.unload(van)
      expect(garage.bikes).to include(bike)
    end

    it 'cannot unload a van if there are no bikes' do
      allow(van).to receive(:bikes).and_return([])
      expect { garage.unload(van) }.to raise_error("No broken bikes available")
    end
  end

  describe '#dock' do
    it 'docks a van' do
      garage.dock(van)
      expect(garage.vans).to include(van)
    end
  end

  describe '#re-stock' do
    it 're-stocks a working bike into the van' do
      allow(van).to receive(:bikes).and_return([bike])
      allow(bike).to receive(:broken?).and_return(true)
      garage.unload(van)
      allow(bike).to receive(:broken?).and_return(false)
      garage.re_stock(van)
      expect(garage.bikes).to be_empty
    end

    it 'cannot re-stock van if the bikes have not been fixed yet' do
      allow(van).to receive(:bikes).and_return([bike])
      allow(bike).to receive(:broken?).and_return(true)
      garage.unload(van)
      expect { garage.re_stock(van) }.to raise_error("Bikes need to be fixed")
    end
  end

  describe '#release' do
    it 'releases a van' do
      garage.dock(van)
      garage.release
      expect(garage.vans).not_to include(van)
    end
  end

end
