require 'garage'

describe Garage do

  let(:garage) { described_class.new }
  let(:van)    { double("van") }
  let(:bike)   { double("bike") }

  describe 'initialization' do
    it 'creates an empty container that will store vans' do
      expect(garage.vans).to be_empty
    end

    it 'creates an empty container that will store bikes' do
      expect(garage.bikes).to be_empty
    end
  end

  describe '#store' do
    it 'stores a van after delivery' do
      garage.store(van)
      expect(garage.vans).to include(van)
    end
  end

  describe '#send' do
    it 'sends a van out for delivery' do
      garage.store(van)
      garage.send
      expect(garage.vans).not_to include(van)
    end
  end

  describe '#dock' do
    it 'stores a broken bike so it can be fixed' do
      allow(bike).to receive(:status).and_return("being fixed")
      garage.dock(bike)
      expect(garage.bikes).to include(bike)
    end
  end

  describe '#release' do
    it 'releases a fixed bike so it can be sent back to docking station' do
      allow(bike).to receive(:status).and_return("working")
      garage.dock(bike)
      garage.release(bike)
      expect(garage.bikes).not_to include(bike)
    end
  end

end
