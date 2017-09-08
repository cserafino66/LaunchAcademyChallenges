class Airplane
  attr_reader :type, :wing_loading, :horsepower
  attr_accessor :engine_status, :air_status

  def initialize(type, wing_loading, horsepower)
    @type = type
    @wing_loading = wing_loading
    @horsepower = horsepower
    @engine_status = ""
    @air_status = 'grounded'
  end

  def start
    if @engine_status == ""
      @engine_status += "on"
      return "The airplane has started!"
    else
      return "The airplane has already started!"
    end
  end

  def takeoff
    if @engine_status == 'on'
      if @air_status == 'grounded'
        @air_status = 'airborne'
        return "Airplane has taken off!"
      else
        return "Airplane is already airborne!"
      end
    else
      return "Please start the airplane first!"
    end
  end

  def land
    if engine_status == 'on'
      if air_status == 'airborne'
        return "The airplane has landed!"
      else
        return "The plane is already on the ground!"
      end
    else
      return "The airplane hasn't started!"
    end
  end
end
