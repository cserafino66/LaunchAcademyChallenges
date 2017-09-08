class CargoTruck
  attr_accessor :plate_number, :branding, :driver
  attr_reader :odometer

  def initialize(plate_number, branding, driver)
    @plate_number = plate_number
    @odometer = 0
    @branding = branding
    if driver.nil?
      @driver = "Lorry Larry"
    else
      @driver = driver
    end
  end

  def summary
    puts "#{@branding} truck with plate #{@plate_number} is driven by #{@driver}"
  end
end
