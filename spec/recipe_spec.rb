require './lib/ingredient'
require './lib/pantry'
require './lib/recipe'

RSpec.describe Recipe do 
  before :each do 
    @ingredient1 = Ingredient.new({name: "Cheese", unit: "oz", calories: 50})
    @ingredient2 = Ingredient.new({name: "Macaroni", unit: "oz", calories: 200})
  end
end