require 'docking_station' 

describe DockingStation do

  describe '#dock' do
    it 'raises an error when full' do
      subject.dock(Bike.new)
      expect { subject.dock Bike.new }.to raise_error 'Docking station full'
    end
  end

  describe '#release_bike' do
    it 'raises an error when there are no bikes available' do
      expect { subject.release_bike }.to raise_error 'No bikes available'
    end
  end

  it 'expects bike to be working' do
      working_bike = DockingStation.new
      expect(working_bike.check_bike_status).to eq true
  end
  
  it 'expects a bike to be docked' do
    station = DockingStation.new
    station.dock("bike")
    expect(station.count_bikes).to be <= 1
  end

  it 'releases working bikes' do
  #arrange, act, assert
    station = DockingStation.new
    expect(station).to respond_to :release_bike
  end
  
  # it 'returns docked bikes' do
  #   bike = Bike.new
  #   subject.dock(bike)
  #   # Again, we need to return the bike we just docked
  #   expect(subject.bike).to eq bike
  # end

end