require 'minitest/autorun'
require 'minitest/pride'
require './lib/messages'

class MessagesTest < Minitest::Test

  def test_does_it_have_an_opening_prompt
    message = "Welcome to BATTLESHIP\n\nWould you like to (p)lay, read the (i)nstructions, or (q)uit? and other stuff here"
    assert_equal message, BattleShip.new.prompt
  end

  def test_if_it_has_instructions
    message = """
      \nWhen asked, figure out some coordinates to place your ships.
      \nYou have two ships, a two-unit boat and a three-unit boat.
      \nYou must place your ships at valid coordinates within the board, if you try otherwise you will get an error message.
      \nThe ships must obey these simple rules:
      \n\t1) Ships cannot overlap one another.
      \n\t2) Ships are not gumby so they cannot wrap around the edges of the board.
      \n\t3) Ship orientation can only be horizontal or vertical.
      \n\t4) Ships coordinates must match size of the ship.
      \n\t5) Have fun and outsmart the enemy!
      """
      assert_equal message, BattleShip.new.instructions
  end
end
