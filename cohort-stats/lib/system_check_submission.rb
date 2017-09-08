class SystemCheckSubmission
  include Grade
  attr_reader :solution, :student
  attr_accessor :grade

  def initialize(solution, student)
    @solution = solution
    @student = student
    @grade = nil
  end

  def assign_grade(grade)
    if !GRADES.include?(grade)
      raise InvalidGradeError
    else
      @grade = grade
    end
  end

  def graded?
    @grade != nil
  end
end

class InvalidGradeError < StandardError
end
