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
end
