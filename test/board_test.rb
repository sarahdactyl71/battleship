require 'minitest/autorun'
require 'minitest/pride'
require './lib/board'
require 'pry'

class BoardTest < Minitest::Test

  def test_does_board_exist
    g = Board.new
    assert_instance_of Board, g
  end

  def test_if_coordinates_are_self_aware
    g = Board.new
    assert_nil g.locations[:A1]
  end

  def test_change_value_of_coordinates
    g = Board.new
    g.grid[0][0] = "X"
    assert_equal "X", g.locations[:A1]
  end

  


end
