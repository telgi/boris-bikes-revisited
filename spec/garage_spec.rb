require 'garage'

describe Garage do

  let(:garage) { described_class.new }
  let(:van)    { double("van") }

  describe 'initialization' do
    it 'creates an empty container that will store vans' do
      expect(garage.vans).to be_empty
    end

    it 'creates an empty container that will store bikes' do
      expect(garage.bikes).to be_empty
    end
  end

  describe '#dock' do
    it 'creates a new van for delivering bikes' do
      garage.dock(van)
      expect(garage.vans).to include(van)
    end
  end

  describe '#release' do
    it 'releases a van from the garage' do
      garage.dock(van)
      garage.release
      expect(garage.vans).to be_empty
    end
  end

end
