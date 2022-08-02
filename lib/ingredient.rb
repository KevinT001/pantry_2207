class Ingredient
  attr_reader :name,
              :unit,
              :calorie
  def initialize(info)
    @name = info[:name] 
    @unit = info[:unit]
    @calorie =info[:calorie]

  end

end
