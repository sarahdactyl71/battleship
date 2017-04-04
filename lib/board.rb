require 'pry'

class Board

attr_accessor :grid

  def initialize
    @grid = Array.new(4) { Array.new(4) }
  end

  def join_grid
    grid.each do |r|
      r.map { |p| p }.join(" ")
    end
  end

  def build_board
  header = "============="
  row_1 = '.  1   2   3   4'
  row_2 = "A " + grid[0].to_s
  row_3 = "B " + grid[1].to_s
  row_4 = "C " + grid[2].to_s
  row_5 = "D " + grid[3].to_s
  footer= "============"
  puts header + "\n" + row_1 + "\n" + row_2 + "\n" + row_3 + "\n" + row_4 + "\n" + row_5 + "\n" + footer
  end
binding.pry

end
