require('minitest/autorun')
require('minitest/rg')
require_relative('../bus.rb')
require_relative('../person.rb')

class BusTest < MiniTest::Test

  def setup
    @bus = Bus.new(22, "Ocean Terminal")
    @passenger1 = Person.new("Filip", 22)
    @passenger2 = Person.new("John", 25)
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

end
