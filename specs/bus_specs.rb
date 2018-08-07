require('minitest/autorun')
require('minitest/rg')
require_relative('../bus.rb')
require_relative('../person.rb')
require_relative('../bus_stop.rb')

class BusTest < MiniTest::Test

  def setup
    @bus = Bus.new(22, "Ocean Terminal")
    @passenger1 = Person.new("Filip", 22)
    @passenger2 = Person.new("John", 25)
    @bus_stop = BusStop.new("Lothian Road")
  end

  def test_get_bus_number
    assert_equal(22, @bus.number)
  end

  def test_get_bus_destination
    assert_equal("Ocean Terminal", @bus.destination)
  end

  def test_drive
    assert_equal("Brum brum",@bus.drive())
  end

  def test_how_many_passengers
    assert_equal(0, @bus.how_many_passengers())
  end

  def test_pick_up
    @bus.pick_up(@passenger1)
    assert_equal([@passenger1], @bus.passengers)
  end

  def test_drop_off
    @bus.pick_up(@passenger1)
    @bus.drop_off(@passenger1)
    assert_equal([], @bus.passengers)
  end

  def test_remove_all_passengers
    @bus.pick_up(@passenger1)
    @bus.pick_up(@passenger2)
    @bus.remove_all()
    assert_equal([], @bus.passengers)
  end

  def test_pick_from_stop
    @bus_stop.add_person_to_queue(@passenger1)
    @bus_stop.add_person_to_queue(@passenger2)
    @bus.pick_from_stop(@bus_stop)
    assert_equal([@passenger1, @passenger2], @bus.passengers)
  end

end
