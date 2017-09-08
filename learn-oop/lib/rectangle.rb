class Rectangle
  attr_reader :length, :width, :x, :y
  attr_writer :length, :width, :x, :y

  def initialize(length, width, x = 0, y = 0)
    @length = length
    @width = width
    @x = x
    @y = y
  end

  def area
    return @length * @width
  end

  def diagonal
    return Math.hypot(@length, @width)
  end

  def move_left
    @x -= 1
  end

  def move_right
    @x += 1
  end

  def move_up
    @y += 1
  end

  def move_down
    @y -= 1
  end
end
