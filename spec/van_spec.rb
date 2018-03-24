require 'van'

describe Van do

  let(:van)     { described_class.new }
  let(:bike)    { double("bike") }
  let(:driver)  { double("driver") }
  let(:station) { double("station") }

  describe 'initialization' do
    it 'creates an empty container for storing bikes' do
      expect(van.bikes).to be_empty
    end
  end

  describe '#dock' do
    it 'docks a broken bike' do
      allow(bike).to receive(:status).and_return("broken")
      allow(driver).to receive(:unlock).and_return("in transit")
      allow(station).to receive(:release).and_return(bike)
      van.dock(bike)
      expect(van.bikes).to include(bike)
    end
  end

end
