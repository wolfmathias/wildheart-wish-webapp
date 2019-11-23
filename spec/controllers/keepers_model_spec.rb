require 'rails_helper'

RSpec.describe Keeper, type: :model do
    
    it 'can be created' do
        keeper = Keeper.create(first_name: "Matt")
        expect(keeper).to be_valid
    end

end


