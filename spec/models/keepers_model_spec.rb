require 'rails_helper'

RSpec.describe Keeper, type: :model do
    
    before do
        @keeper = Keeper.create(first_name: "Matt")
    end
    
    it 'can be created' do
        expect(@keeper).to be_valid
    end

    it 'can add an animal to its collection' do
        @animal = @keeper.animals.build(name: "Voodoo")
        expect(@keeper.animals.last).to eq(@animal)
    end

end


