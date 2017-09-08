class Container
  attr_reader :weight, :maximum_holding_weight
  attr_accessor :ingredients

  def initialize(weight, maximum_holding_weight)
    @weight = weight
    @maximum_holding_weight = maximum_holding_weight
    @ingredients = []
  end

  def fill_with_ingredient(ingredient)
    max_items = (@maximum_holding_weight / ingredient.weight).to_i
    max_items.times do
      @ingredients << ingredient
    end
    @weight += @maximum_holding_weight
  end

  def which_ingredient
    @ingredients[0].name
  end

  def how_many_ingredients
    @ingredients.count
  end

  def remove_one_ingredient
    @ingredients.pop
  end

  def empty
    @ingredients = []
  end
end
