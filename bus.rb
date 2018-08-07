class Bus

attr_reader(:number, :destination, :passengers)

def initialize(number, destination)
  @number = number
  @destination = destination
  @passengers = []
end

def drive()
  return "Brum brum"
end

def how_many_passengers()
  return @passengers.length
end

def pick_up(passenger)
@passengers.push(passenger)
end

def drop_off(passenger)
  @passengers.delete(passenger)
end

def remove_all()
  @passengers = []
end

def pick_from_stop(bus_stop)
  @passengers += bus_stop.queue
  bus_stop.queue = []
end
end
