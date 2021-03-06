module Messages

  def prompt
    "Welcome to BATTLESHIP\n\nWould you like to (p)lay, read the (i)nstructions, or (q)uit? and other stuff here"
  end

  def instructions
    """
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
  end

  def computer_ship_placement_message
    """
    \nI have laid out my ships on the grid.
    \nYou now need to layout your two ships.
    \nThe first is two units long and the second is three units long.
    \nThe grid has A1 at the top left and D4 at the bottom right.
    \n\nEnter the squares for the two-unit ship:
    """
  end

  def player_small_boat
    "Your smallest boat has been placed! Enter the coordinates for your 3 unit boat!"
  end

  def player_ships_place
    "All your ships have been placed! Now time to battle!"
  end

  def begin_game_prompt
    """
    The computer will place its ships first.
    \nThen you will place two ships, the first a two unit, the second a three-unit.
    \nYou will enter coordinates in this format:
    \nAfter you have placed your ships it will be time to battle!
    """
  end

end
