class PersonalizedHavocError < StandardError
end

module PartyGoer
  def initialize()
    @total_drinks = 0
  end

  def drink
    @total_drinks += 1
    if @total_drinks != 4
      return true
    else
      return false
    end
  end

  def sing
    return "LALALALALAAAAA!!!!"
  end

  def cause_havoc
    raise PersonalizedHavocError, "You should define this yourself!"
  end

  def invited?
    true
  end
end
