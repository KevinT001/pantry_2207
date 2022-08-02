require './lib/ingredient'
require './lib/pantry'

RSpec.describe Pantry do 
  before :each do 
    @pantry = Pantry.new
  end

  it 'exists' do 
    expect(@pantry).to be_a(Pantry)
  end

  it 'has stock set to empty hash' do 
    expect(@pantry.stock).to eq({})
  end

  it 'can check stock' do 
    expect(@pantry.stock_check(ingredient1).to eq 0)
  end

  
end