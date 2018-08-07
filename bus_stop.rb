class BusStop

attr_reader(:name, :queue)
  def initialize(name)
    @name = name
    @queue = []
  end

def add_person_to_queue(passenger)
  @queue.push(passenger)
end

end
