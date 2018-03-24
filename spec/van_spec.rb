require 'van'

describe Van do

  let(:van) { described_class.new }

  describe 'initialization' do
    it 'creates an empty container for storing bikes' do
      expect(van.bikes).to be_empty
    end
  end

end
