class Theater
  attr_accessor :seats, :patrons

  def initialize(seats, patrons = 0)
    @seats = seats
  end

  def admit!(number)
    if number.nil
      number = 1
    elsif (@patrons + number) < @seats
      @patrons += number
    else
      puts "The theater is too full for your party!"
    end
  end

  def at_capacity?
    @seats == @patrons
  end

  def record_walk_outs!(number)
    if number.nil
      @patrons -= 1
    elsif @patrons > 0
      @patrons -= number
    end
  end
end
