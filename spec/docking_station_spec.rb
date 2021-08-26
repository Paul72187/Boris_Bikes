require 'docking_station' 

describe DockingStation do
  it { is_expected.to respond_to :release_bike }
  end

describe DockingStation do

  it 'expects bike to be working' do
      working_bike = DockingStation.new
      expect(working_bike.check_bike_status).to eq "no good"
  end
  
  it 'expects a bike to be docked' do
    docked_bike = DockingStation.new
    expect(docked_bike.dock_bike("bike")).to eq true
  end

  it 'check if bikes are in the station' do
  #arrange, act, assert
    station = DockingStation.new
    expect {station.release_bike}.to raise_error("No bikes in station")
  end
  
  it 'checks station does not have more than 10 bikes' do
    station = DockingStation.new
    expect(station.count_bikes).to be <= 10
  end
end