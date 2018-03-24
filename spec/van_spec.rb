require 'van'

describe Van do

  let(:van)     { described_class.new }
  let(:bike)    { double("bike") }

  describe 'initialization' do
    it 'creates an empty container for storing bikes' do
      expect(van.bikes).to be_empty
    end
  end

  describe '#dock' do
    it 'docks a broken bike' do
      allow(bike).to receive(:status).and_return("in transit")
      van.dock(bike)
      expect(van.bikes).to include(bike)
    end

    it 'cannot dock a working bike' do
      allow(bike).to receive(:status).and_return("working")
      expect { van.dock(bike) }.to raise_error("Bike is working")
    end
  end

  describe '#release' do
    it 'releases a bike for the garage to fix it' do
      allow(bike).to receive(:status).and_return("in transit")
      van.dock(bike)
      van.release
      expect(van.bikes).to be_empty
    end
  end

end
