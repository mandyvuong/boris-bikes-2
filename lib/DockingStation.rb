class DockingStation
  def release_bike

  end
end

class Bike
  def working?
    DockingStation.release_bike
  end
end