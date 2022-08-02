class Recipe
  attr_reader :name,
              :ingredients_required
  
  def initialize(name)
    @name = name 
    @ingredients_required = Hash.new(0)

  end

  def add_ingredient(item, amount)
    @ingredients_required[item] += amount 
  end

  def ingredient
    @ingredients_required.keys
  end

  def total_calories
    @ingredients_required.sum #need to multiply calories by total units and add up?  
    require'pry';binding.pry
  end
end
