require('minitest/autorun')
require('minitest/rg')
require_relative('../bus_stop.rb')
require_relative('../person.rb')

class BusStopTest < MiniTest::Test

def setup
  @bus_stop = BusStop.new("Lothian Road")
end

def test_get_bus_stop_name
  assert_equal("Lothian Road", @bus_stop.name)
end
end
