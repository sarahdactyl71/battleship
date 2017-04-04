class Ship

  attr_reader :size

  def initialize(size)
    @size = size
    @hit_count = 0
    @sunken = false
    @on_board = false
  end

  def on_board?
    @on_board
  end

  def put_on_board
    @on_board = true
  end

  def times_hit
    @hit_count
  end

  def hit
    @hit_count += 1
      if @hit_count == @size
        @sunken = true
      end
  end

  def sunken?
    @sunken
  end
end
