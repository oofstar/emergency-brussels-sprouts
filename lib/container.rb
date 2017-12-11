class Container
  attr_reader :weight, :maximum_holding_weight
  attr_accessor :ingredients

  def initialize(weight, maximum_holding_weight)
    @weight = weight
    @maximum_holding_weight = maximum_holding_weight
    @ingredients = []
  end

  def fill_with_ingredient(ingredient)
    total_weight = 0
    while total_weight <= @maximum_holding_weight do
      @ingredients << ingredient
      total_weight += ingredient.weight
    end
    @weight += total_weight.round
  end

  def which_ingredient
    return @ingredients.first.name
  end

  def how_many_ingredients
    return @ingredients.length
  end

  def remove_one_ingredient
    @ingredients.pop
  end

  def empty
    @ingredients = []
  end

end
