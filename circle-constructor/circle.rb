class Circle
  attr_reader :radius

  def initialize(user_datum)
    if user_datum.kind_of?(Hash)
      if user_datum[:radius].nil?
        @radius = user_datum[:radius] / 2
      else
        @radius = user_datum[:radius]
      end
    else
      @radius = user_datum
    end
  end
end
