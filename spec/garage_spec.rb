require 'garage'

describe Garage do

  let(:garage) { described_class.new }
  let(:van)    { double("van") }
  let(:bike)   { double("bike") }

  describe 'initialization' do
    it 'creates an empty container that will store vans' do
      expect(garage.vans).to be_empty
    end
  end

  describe '#dock' do
    it 'docks a van' do
      garage.dock(van)
      expect(garage.vans).to include(van)
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
