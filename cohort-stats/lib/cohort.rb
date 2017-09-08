class Cohort < SystemCheck
  attr_reader :title, :start_date, :end_date
  attr_accessor :students, :system_checks

  def initialize(title, start_date, end_date)
    @title = title
    @start_date = start_date
    @end_date = end_date
    @students = []
    @system_checks = []
  end

  def career_kickoff
    @end_date + 4
  end

  def enroll(student)
    if !students.include?(student)
      students << student
    end
  end

  def assign(system_check)
    system_checks << system_check
  end

  def roster
    roster_string = "#{@title}\n"
    @students.each do |student|
      roster_string += student.name
      roster_string += student.email
    end
    return roster_string
  end

  def system_check_completed?
    check = []
    students.each do |student|
      if student.did_student_complete_system_check
        check += 1
      end
    end
    if check. == students.size
      return true
    else
      return false
    end
  end
end
