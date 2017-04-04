require 'minitest/autorun'
require 'minitest/pride'
require './lib/board'

class BoardTest < Minitest::Test

  def test_does_board_exist
    g = Board.new
    assert_instance_of Board, g
  end

  def test_what_does_grid_look_like
    g = Board.new
    assert_equal [[nil, nil, nil, nil], [nil, nil, nil, nil], [nil, nil, nil, nil], [nil, nil, nil, nil]] , g.join_grid
  end

  def test_adds_borders
    skip
    g = Board.new
    assert_equal ["============="], g.build_board.to_s
  end
  

end
