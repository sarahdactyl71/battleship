require './lib/board'
require './lib/ship'
require './lib/messages'
require 'pry'

class Game
  include Messages

  attr_accessor :comp_board, :comp_ship1, :comp_ship2, :player_board, :player_ship1, :player_ship2

  def initialize
    place_computer_ships
    play_game
  end

  def place_computer_ships
    @comp_board = Board.new
    comp_board.build_board
    @comp_ship1 = Ship.new(2)
    @comp_ship2 = Ship.new(3)
    comp_board.locations[:A1] = comp_ship1
    comp_board.locations[:A2]= comp_ship1
    comp_board.locations[:B2] = comp_ship2
    comp_board.locations[:C2]= comp_ship2
    comp_board.locations[:D2]= comp_ship2
    comp_board.build_board
    puts computer_ship_placement_message
  end

  def play_game
    place_player_ships
  end

  def place_player_ships
    @player_board = Board.new
    comp_board.build_board
    @player_ship1 = Ship.new(2)
    @player_ship2 = Ship.new(3)

  end

end
