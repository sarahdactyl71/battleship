require 'pry'
require './lib/coordinates'

class Board
  include Coordinates

attr_accessor :grid

  def initialize
    @grid ||= Array.new(4) { Array.new(4) }
  end

  def build_board
  binding.pry
  header = "============="
  row_1 = '.  1   2   3   4'
  row_2 = "A " + grid[0].to_s
  row_3 = "B " + grid[1].to_s
  row_4 = "C " + grid[2].to_s
  row_5 = "D " + grid[3].to_s
  footer= "============"
  puts header + "\n" + row_1 + "\n" + row_2 + "\n" + row_3 + "\n" + row_4 + "\n" + row_5 + "\n" + footer
  end

  def coordinates
    {A1: grid[0][0],
     A2: grid[0][1],
     A3: grid[0][2],
     A4: grid[0][3],

     B1: grid[1][0],
     B2: grid[1][1],
     B3: grid[1][2],
     B4: grid[1][3],

     C1: grid[2][0],
     C2: grid[2][1],
     C3: grid[2][2],
     C4: grid[2][3],

     D1: grid[3][0],
     D2: grid[3][1],
     D3: grid[3][2],
     D4: grid[3][3]}
  end


end
