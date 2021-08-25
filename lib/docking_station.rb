class Bike

  def working?
  true
  end
  
end

class DockingStation
    def initialize
      @docked_bikes = []
    end

    def release_bike
      bike = Bike.new
    end

    def dock_bike(bike)
      @docked_bikes.push(bike)
      true
    end
end