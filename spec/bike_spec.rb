require 'bike'

describe Bike do

  let(:bike) { described_class.new }

  describe 'initialization' do
    it 'defaults status to `working`' do
      expect(bike.status).to eq('working')
    end
  end

  describe '#report_broken' do
    it 'changes the status of a bike from `working` to `broken`' do
      bike.report_broken
      expect(bike.status).to eq('broken')
    end
  end

end
