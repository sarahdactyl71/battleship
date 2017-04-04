require 'minitest/autorun'
require 'minitest/pride'
require './lib/ship'

class ShipTest < Minitest::Test

  def test_ship_exists
    s = Ship.new(2)
    assert_instance_of Ship, s
  end

  def test_what_is_the_ship_size
    s = Ship.new(2)
    s1 = Ship.new(3)
    assert_equal 2, s.size
    assert_equal 3, s1.size
  end

  def test_what_is_hit_default
      s = Ship.new(2)
      assert_equal 0, s.times_hit
  end

  def test_can_ship_be_hit
    s = Ship.new(2)
    s.hit
    assert_equal 1, s.times_hit
  end

  def test_ship_can_be_hit_multiple_times
      s = Ship.new(2)
      s.hit
      s.hit
      assert_equal 2, s.times_hit
  end

  def does_small_ship_know_it_is_sunken
    s = Ship.new(2)
    s.hit
    refute s.sunken?
    s.hit
    assert s.sunken?
  end

  def does_larger_ship_know_it_is_sunken
    s = Ship.new(3)
    s.hit
    refute s.sunken?
    s.hit
    refute s.sunken?
    s.hit
    assert s.sunken?
  end


end
