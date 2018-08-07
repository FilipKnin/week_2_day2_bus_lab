require('minitest/autorun')
require('minitest/rg')
require_relative('../bus_stop.rb')
require_relative('../person.rb')

class BusStopTest < MiniTest::Test

def setup
  @bus_stop = BusStop.new("Lothian Road")
  @passenger1 = Person.new("Filip", 22)
end

def test_get_bus_stop_name
  assert_equal("Lothian Road", @bus_stop.name)
end

def test_adds_person_to_queue
  @bus_stop.add_person_to_queue(@passenger1)
  assert_equal([@passenger1], @bus_stop.queue)
end
end
