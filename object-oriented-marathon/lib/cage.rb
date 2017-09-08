class Cage
  attr_accessor :animal

  def initialize
    @animal = nil
    # @empty = true
  end

  def empty?
    @animal.nil?
  end


end
