require 'minitest/autorun'
require 'minitest/pride'
require './lib/board_refactor'
require 'pry'

class GridTest < Minitest::Test

  def test_init
    g = Grid.new
    assert_instance_of Grid, g
  end

  def test_ship_is_there
    g = Grid.new
    assert_nil g.has_ship?(ship)
    g.
  end

end
