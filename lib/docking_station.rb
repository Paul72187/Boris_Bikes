require_relative '../lib/bike'

class DockingStation

  attr_reader :release_bike, :dock_bike
  
    def initialize
      @docked_bikes = ["x","x","x","x","x","x","x","x","x"]
      @station_capacity = 10
    end

    def check_bike_status
      bike_status = Bike.new
      bike_status_message = bike_status.working?
      puts bike_status_message

      if bike_status_message == "This Bike is Working"
        bike_message = "This Bike is Working"
      else
        bike_message = "no good"
      end
      bike_message

    end

    def release_bike
      # bike_status = Bike.new
      if @docked_bikes.empty?
        puts "There is a bike in the station"
      else         
        raise "No bikes in station"
      end
    end

    def dock_bike(bike)
      bike_count = @docked_bikes.count   
      
      puts bike_count
      
      if bike_count <= @station_capacity
        @docked_bikes.push(bike)
        puts @docked_bikes.count
      else
        raise "this station is at capacity #{@capacity}"
      end      
      true
    end

    def count_bikes
      
      bike_count = @docked_bikes.count      
      
      if bike_count <= @station_capacity
        @docked_bikes.count
      else
        raise "error"
      end
    end 
end