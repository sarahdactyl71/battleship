require 'pry'
require './lib/ship'

class Grid

  attr_reader :board

  def initialize
    @board = Hash.new
    @board['.'] = ['1', '2', '3', '4']
    letters = ['A', 'B', 'C', 'D']
    letters.each do |letter|
    @board[letter] = Array.new(4, 0)
    end
  end

  def make_board
    keys = @board.keys
    columns = @board[keys[0]]
    row_1 = @board[keys[1]]
    row_2 = @board[keys[2]]
    row_3 = @board[keys[3]]
    row_4 = @board[keys[4]]
    row_1_new = []
    row_2_new = []
    row_3_new = []
    row_4_new = []
    make_the_rows(row_1, row_1_new)
    make_the_rows(row_2, row_2_new)
    make_the_rows(row_3, row_3_new)
    make_the_rows(row_4, row_4_new)
    border = "=============="
    printed_board = """
    #{border}
    #{keys[0]} #{columns[0]} #{columns[1]} #{columns[2]} #{columns[3]}
    #{keys[1]} #{row_1_new[0]} #{row_1_new[1]} #{row_1_new[2]} #{row_1_new[3]} #{row_1_new[4]}
    #{keys[2]} #{row_2_new[0]} #{row_2_new[1]} #{row_2_new[2]} #{row_2_new[3]} #{row_2_new[4]}
    #{keys[3]} #{row_3_new[0]} #{row_3_new[1]} #{row_3_new[2]} #{row_3_new[3]} #{row_3_new[4]}
    #{keys[4]} #{row_4_new[0]} #{row_4_new[1]} #{row_4_new[2]} #{row_4_new[3]} #{row_4_new[4]}
    #{border}
    """
  end

  def make_the_rows(row, new_row)
    row.each do |i|
      if i == 0
        i = " "
      end
      new_row << i
    end
  end

  def has_ship?(ship)
    @board.values.any? { |value| value.include?(ship) }
  end

end
