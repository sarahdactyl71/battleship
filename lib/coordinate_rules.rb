require 'pry'
require './lib/board'

class CoordinateRules
  def initialize
    @b = Board.new
    @board = @b.build_board
  end
   "A1" == @board[0][0]



end
