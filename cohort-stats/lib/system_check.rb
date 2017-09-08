require_relative 'system_check_submission'

class SystemCheck
  include Grade
  attr_accessor :submissions

  def initialize(name, due)
    @name = name
    @due = due
    @submissions = []
  end

  def add_submission(submission)
    submissions << submission
  end

  def average_grade
    total_points = 0
    submissions.each do |submission|
      score = submission.grade
      total_points += score
    end
    return (total_points.to_f / submissions.size.to_f)
  end
end
