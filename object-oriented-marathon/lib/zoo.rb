class ZooAtCapacity < StandardError
end

class Zoo
  attr_reader :cages, :employees

  def initialize(name, season_opening_date, season_closing_date)
    @name = name
    @season_opening_date = season_opening_date
    @season_closing_date = season_closing_date
    @cages = []
    create_cages
    @employees = []
  end

  def create_cages
    10.times do
      @cages << Cage.new
    end
  end

  def add_employee(employee)
    @employees << employee
  end

  def open?(date)
    @season_opening_date <= date && date <= @season_closing_date
  end

  def add_animal(animal)
     @cages.each do |cage|
       if cage.empty?
         cage.animal = animal
         return #break goes out of loop, return goes out of method
       end
     end
     raise ZooAtCapacity
  end

  def visit
    # @employees.inject ("") do |employee_greetings, employee|
    employee_greetings = ""
    @employees.each do |employee|
      employee_greetings += "#{employee.greet}\n"
    end
    animal_greetings= ""
    @cages.each do |cage|
      if !cage.empty?
        animal_greetings+= "#{cage.animal.speak}\n"
      end
    end
    employee_greetings.concat(animal_greetings)
  end



end
