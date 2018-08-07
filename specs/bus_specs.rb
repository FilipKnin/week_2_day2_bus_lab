require('minitest/autorun')
require('minitest/rg')
require_relative('../bus.rb')

class BusTest < MiniTest::Test

  def setup
    @bus = Bus.new(22, "Ocean Terminal")
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

end
