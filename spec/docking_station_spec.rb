require 'docking_station'

describe DockingStation do
  it { is_expected.to respond_to :release_bike }
  end

describe DockingStation do
  it 'releases a bike' do
      expect(DockingStation(release_bike)).to eq'Bike Released'
  end 
  
  it 'expects bike to be working' do
      expect(Bike(working?)).to eq'Bike is working'
  end
end