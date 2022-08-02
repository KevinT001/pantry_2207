require './lib/ingredient'
require './lib/pantry'

RSpec.describe Pantry do 
  before :each do 
    @pantry = Pantry.new
  end
end