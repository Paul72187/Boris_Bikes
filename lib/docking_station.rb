require_relative '../lib/bike'

class DockingStation

  attr_reader :bike, :docked_bikes

    def initialize
      @docked_bikes = []
      @station_capacity = 10
    end

    def check_bike_status
      bike_status = Bike.new
      bike_status.working?
    end

    def dock(bike)
      fail 'Docking station full' if full?
      @docked_bikes << bike
    end

    def release_bike
      fail 'No bikes available' if empty?
      @bike
    end

    def count_bikes
      @docked_bikes.count
    end

    private
    def full?
      @docked_bikes.count >= 10
    end

    def empty?
      @docked_bikes.empty?
    end


end