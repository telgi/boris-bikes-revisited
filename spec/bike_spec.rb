require 'bike'

describe Bike do

  let(:bike) { Bike.new }

  describe '#working?' do
    it 'is working by default' do
      expect(bike.working?).to equal(true)
    end
  end

end
