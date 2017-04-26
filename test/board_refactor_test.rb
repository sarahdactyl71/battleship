require 'minitest/autorun'
require 'minitest/pride'
require './lib/board_refactor'
require 'pry'

class GridTest < Minitest::Test

  def test_init
    g = Grid.new
    assert_instance_of Grid, g
  end

  def test_the_board_makes
    g= Grid.new
    assert g.make_board
  end

end
