require 'minitest/autorun'
require 'minitest/pride'
require './lib/board'

class BoardTest < Minitest::Test

  def test_does_board_exist
    g = Board.new
    assert_instance_of Board, g
  end

  def test_adds_borders
    g = Board.new
    assert_equal ["============="], g.build_board.to_s
  end

  def test_what_are_coordinates
    g = Board.new
    
  end


end
