require './lib/ingredient'
require './lib/pantry'
require './lib/recipe'

RSpec.describe Recipe do 
  before :each do 
    @ingredient1 = Ingredient.new({name: "Cheese", unit: "C", calories: 100})
    @ingredient2 = Ingredient.new({name: "Macaroni", unit: "oz", calories: 200})
    @ingredient3 = Ingredient.new({name: "Ground Beef", unit: "oz", calories: 100})
    @ingredient4 = Ingredient.new({name: "Bun", unit: "g", calories: 75})
    @recipe1 = Recipe.new("Mac and Cheese")
    @recipe2 = Recipe.new("Cheese Burger")
  end

  it 'has dem attributes' do 
    expect(@recipe1.name).to eq("Mac and Cheese")
  end

  it 'can list ingredients required as Hash and add to hash' do 
    expect(@recipe1.ingredients_required).to eq({})

    @recipe1.add_ingredient(@ingredient1, 2)
    @recipe1.add_ingredient(@ingredient1, 4)
    @recipe1.add_ingredient(@ingredient2, 8)

    expect(@recipe1.ingredients_required).to eq({@ingredient1 => 6, @ingredient2 => 8})
  end

  it 'can list ingredients in a recipe as an array' do 
    @recipe1.add_ingredient(@ingredient1, 2)
    @recipe1.add_ingredient(@ingredient1, 4)
    @recipe1.add_ingredient(@ingredient2, 8)
    
    expect(@recipe1.recipes).to eq([@ingredient1,@ingredient2])
  end

  it 'can return total calories of a given recipe' do 
    @recipe1.add_ingredient(@ingredient1, 2)
    @recipe1.add_ingredient(@ingredient2, 8)
    @recipe2.add_ingredient(@ingredient1, 2)
    @recipe2.add_ingredient(@ingredient3, 4)
    @recipe2.add_ingredient(@ingredient4, 1)

    expect(@recipe1.total_calories).to eq(440)
    expect(@recipe2.total_calories).to eq(675)

  end
end