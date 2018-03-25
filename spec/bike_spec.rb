require 'bike'

describe Bike do

  let(:bike) { described_class.new }

  describe '#report_broken' do
    it 'returns true when checking if bike is broken' do
      bike.report_broken
      expect(bike.broken?).to eq(true)
    end
  end

  describe '#fix' do
    it 'returns false when checking if bike is broken' do
      bike.fix
      expect(bike.broken?).to eq(false)
    end
  end

end
