require 'rails_helper'

RSpec.describe Party, type: :model do
  describe "create a party" do
    before do
      @party = Party.create({name: "wooow", nmofpeople: 3, server_id: 2})
      @food1 = Food.create({name: 'Borsh', category: 'soup', price: 10})
      @food2 = Food.create({name: 'Meatball', category: 'entree', price: 3})

      Order.create({party: @party, food: @food1})
      Order.create({party: @party, food: @food2})
    end
    describe '#total cost' do
      it 'returns Total cost' do
        actual = @party.total()
        expectation = 13.00
        puts (expectation)
        puts(actual)
        expect(actual).to eq(expectation)
      end
    end

    describe 'create party' do
      it 'creates the party name' do
        actual = @party.name
        expectation = "wooow"
        puts (expectation)
        puts(actual)
        expect(actual).to eq(expectation)
      end
    end
  end
end
