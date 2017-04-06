require 'minitest/autorun'
require 'minitest/pride'
require './lib/coordinate_rules'
require './lib/ship'
require './lib/board'
require 'pry'

class CoordinateRulesTest < Minitest::Test

  attr_reader :board,
              :ship_1,
              :ship_2
def setup
  @board = Board.new
  @ship_1 = Ship.new(2)
  @ship_2 = Ship.new(3)
end

  def test_do_rules_exist
    c = CoordinateRules.new
    assert_instance_of CoordinateRules, c
  end

  def test_do_coordinates_know_where_they_go
    c = CoordinateRules.new
    assert_equal "A1", board.grid[0][0]
  end

end
