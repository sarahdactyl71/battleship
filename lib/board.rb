require 'pry'

class Board

  attr_accessor :grid, :locations

  def initialize
    @grid ||= Array.new(4) { Array.new(4) }
    @locations = {A1: nil,
                  A2: nil,
                  A3: nil,
                  A4: nil,

                  B1: nil,
                  B2: nil,
                  B3: nil,
                  B4: nil,

                  C1: nil,
                  C2: nil,
                  C3: nil,
                  C4: nil,

                  D1: nil,
                  D2: nil,
                  D3: nil,
                  D4: nil}
  end

  def build_board
    grid[0][0] = locations[:A1]
    grid[0][1] = locations[:A2]
    grid[0][2] = locations[:A2]
    grid[0][3] = locations[:A4]

    grid[1][0] = locations[:B1]
    grid[1][1] = locations[:B2]
    grid[1][2] = locations[:B3]
    grid[1][3] = locations[:B4]

    grid[2][0] = locations[:C1]
    grid[2][1] = locations[:C2]
    grid[2][2] = locations[:C3]
    grid[2][3] = locations[:C4]

    grid[3][0] = locations[:D1]
    grid[3][1] = locations[:D2]
    grid[3][2] = locations[:D3]
    grid[3][3] = locations[:D4]
  end

  def display_board
    header = "============="
    row_1 = '.  1   2   3   4'
    row_2 = "A " + grid[0].to_s
    row_3 = "B " + grid[1].to_s
    row_4 = "C " + grid[2].to_s
    row_5 = "D " + grid[3].to_s
    footer= "=============="
    puts header + "\n" + row_1 + "\n" + row_2 + "\n" + row_3 + "\n" + row_4 + "\n" + row_5 + "\n" + footer
  end


end
# binding.pry
# ""
