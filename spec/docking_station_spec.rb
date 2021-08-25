require 'docking_station'

describe DockingStation do
  it { is_expected.to respond_to :release_bike }
  end

describe DockingStation do
  
  it 'expects bike to be working' do
      bike = subject.release_bike
      expect(bike).to be_working
  end
  it 'expects a bike to be docked' do
    #expect(dock_bike("bike")).to eq true
    bike = subject.dock_bike("Bike")
    expect(bike).to eq true
  end
end