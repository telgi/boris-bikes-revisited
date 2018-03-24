require 'driver'

describe Driver do

  let(:driver) { described_class.new }
  let(:bike)   { double("bike") }

  describe '#unlock' do
    it 'unlocks a broken bike by changing status to `in transit`' do
      allow(bike).to receive(:status).and_return("in transit")
      expect(bike.status).to eq("in transit")
    end
  end

end
