require 'minitest/autorun'
require 'minitest/pride'
require './lib/coordinate_rules'
require './lib/board'

class CoordinateRulesTest < Minitest::Test

  def test_coordinate_rules_exist
    c = CoordinateRules.new
    assert_instance_of CoordinateRules, c
  end

  def test_if_coordinates_are_self_aware
    c = Coordinates.new
    assert_equal nil
  end

end
