require 'bike'

describe Bike do

  let(:bike) { described_class.new }

  describe '#report_broken' do
    it 'returns true when checking if bike is broken' do
      bike.report_broken
      expect(bike.broken?).to eq(true)
    end
  end

end
