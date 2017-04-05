require 'minitest/autorun'
require 'minitest/pride'
require './lib/game'
require 'pry'

class GameTest < Minitest::Test

  def test_ship_has_been_placed
    g = Game.new
    assert_instance_of Ship, g.comp_board.locations[:A1]
    assert_instance_of Ship, g.comp_board.locations[:A2]
  end

  def test_second_ship_has_been_placed
    g = Game.new
    assert_instance_of Ship, g.comp_board.locations[:B2]
    assert_instance_of Ship, g.comp_board.locations[:C2]
    assert_instance_of Ship, g.comp_board.locations[:D2]
  end


end
