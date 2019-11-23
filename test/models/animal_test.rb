require 'test_helper'

class AnimalTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  it 'can be created' do
    animal = Animal.create!(name: "Voodoo", species: "Black Leopard")
    expect(animal).to be_valid
end

end
