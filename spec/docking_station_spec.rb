require 'docking_station' 

describe DockingStation do

  it 'expects bike to be working' do
      working_bike = DockingStation.new
      expect(working_bike.check_bike_status).to eq true
  end
  
  it 'expects a bike to be docked' do
    docked_bike = DockingStation.new
    docked_bike.dock_bike("bike")
    expect(docked_bike.count_bikes).to be >= 1
  end

  it 'check if bikes are in the station' do
  #arrange, act, assert
    station = DockingStation.new
    expect(station.release_bike).to eq true
  end
  
  it 'checks station does not have more than 10 bikes' do
    station = DockingStation.new
    station.dock_bike("bike")
    expect(station.count_bikes).to be <= 10
  end
end