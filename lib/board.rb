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

  def border
  ["============="]
  end


end
