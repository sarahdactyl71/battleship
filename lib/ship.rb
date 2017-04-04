class Ship

  attr_reader :size

  def initialize(size)
    @size = size
    @hit_count = 0
    @sunken = false

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
