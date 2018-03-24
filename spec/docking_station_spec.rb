require 'docking_station'

describe DockingStation do

  it 'starts with an empty container called `bikes`' do
    expect(subject.bikes).to be_empty
  end

end
