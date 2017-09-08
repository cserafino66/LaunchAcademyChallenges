class BoundingArea
  def initialize(boxes_array = [])
    @boxes_array = boxes_array
  end

  def boxes_contain_point?(x_coord, y_coord)
    @boxes_array.each do |box|
      if box.contains_point?(x_coord, y_coord)
        return true
      end
    end
    return false
  end
end
