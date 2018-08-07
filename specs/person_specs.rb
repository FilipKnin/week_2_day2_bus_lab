require('minitest/autorun')
require('minitest/rg')
require_relative('../person.rb')

class PersonTest < MiniTest::Test

  def setup
    @person = Person.new("Filip",20)
  end

  def test_get_person_name
    assert_equal("Filip", @person.name)
  end

  def test_get_person_age
    assert_equal(20, @person.age)
  end

end
