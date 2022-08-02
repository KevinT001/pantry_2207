require './lib/ingredient'
require './lib/pantry'
require './lib/recipe'
require './lib/cook_book'

RSpec.describe CookBook do 
  before :each do 
    @ingredient1 = Ingredient.new({name: "Cheese", unit: "oz", calories: 50})
    @ingredient2 = Ingredient.new({name: "Macaroni", unit: "oz", calories: 200})
    @recipe1 = Recipe.new("Mac and Cheese")
    @recipe2 = Recipe.new("Cheese Burger")
    @pantry = Pantry.new
    @cookbook = CookBook.new

  end

  it 'exists' do 
    expect(@cookbook).to be_a(CookBook)
    expect(@recipe2).to be_a(Recipe)
  end

  it 'can add recipes to cookbook array' do 
   @cookbook.add_recipe(@recipe1)
   @cookbook.add_recipe(@recipe2)
   expect(@cookbook.recipes).to eq([@recipe1, @recipe2])
  end

end