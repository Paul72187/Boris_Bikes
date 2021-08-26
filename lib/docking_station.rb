require_relative '../lib/bike'

class DockingStation

  attr_reader :release_bike, :dock_bike
  
    def initialize
      @docked_bikes = []
      @station_capacity = 10
    end

    def check_bike_status
      bike_status = Bike.new
      bike_status.working?
    end

    def release_bike
      @docked_bikes.empty?
    end

    def dock_bike(bike)               
      if @docked_bikes.count <= @station_capacity
        @docked_bikes.push(bike)
      else
        raise "this station is at capacity"
      end
    end

    def count_bikes      
      @docked_bikes.count
    end 
end