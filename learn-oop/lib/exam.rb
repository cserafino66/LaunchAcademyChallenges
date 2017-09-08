class Exam
  attr_reader :name, :due_date

  attr_writer :assigned_to

  attr_accessor :grade

  def initialize(name, due_date)
    @name = name
    @due_date = due_date
    @assigned_to = nil
    @grade = nil
  end
end
