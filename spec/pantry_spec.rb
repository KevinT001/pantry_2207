require './lib/ingredient'
require './lib/pantry'

RSpec.describe Pantry do 
  before :each do 
    @pantry = Pantry.new
    @ingredient1 = Ingredient.new({name: "Cheese", unit: "C", calories: 100})
    @ingredient2 = Ingredient.new({name: "Macaroni", unit: "oz", calories: 200})
    @ingredient3 = Ingredient.new({name: "Ground Beef", unit: "oz", calories: 100})
    @ingredient4 = Ingredient.new({name: "Bun", unit: "g", calories: 75})
    @cookbook = CookBook.new
    @recipe1 = Recipe.new("Mac and Cheese")
    @recipe2 = Recipe.new("Cheese Burger")
  end

  it 'exists' do 
    expect(@pantry).to be_a(Pantry)
  end

  it 'has stock set to empty hash' do 
    expect(@pantry.stock).to eq({})
  end

  it 'can check stock' do 
    expect(@pantry.stock_check(@ingredient1)).to eq(0)
  end

  it 'can restock ingredients and check current stock' do 
    @pantry.restock(@ingredient1, 5)
    @pantry.restock(@ingredient1, 10)
    expect(@pantry.stock_check(@ingredient1)).to eq(15)
    @pantry.restock(@ingredient2, 7)
    expect(@pantry.stock_check(@ingredient2)).to eq(7)
  end

end