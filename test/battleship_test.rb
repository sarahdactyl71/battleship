require 'minitest/autorun'
require 'minitest/pride'
require './lib/battleship'

class BattleShipTest < Minitest::Test

  def test_welcome_message
    assert_equal "yellow", Messages.prompt
  end

  def test_what_does_grid_look_like
    b = Board.new
    assert_equal [[nil, nil, nil, nil], [nil, nil, nil, nil], [nil, nil, nil, nil], [nil, nil, nil, nil]], grid
  end

end
