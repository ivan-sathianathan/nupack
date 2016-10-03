require 'type_markup_calculator'

describe TypeMarkupCalculator do
  subject(:type_markup_calculator) { described_class.new }

  context '#markup' do
    it 'returns markup after type markup is applied' do
      marked_up_price = 1050
      expect(type_markup_calculator.markup(marked_up_price, :food)).to eq(136.5)
    end
    it 'does not apply a markup when there is no type match' do
      marked_up_price = 1050
      expect(type_markup_calculator.markup(marked_up_price, :cars)).to eq(0)
    end
  end

  context 'allows different product rates to be applied' do
    subject(:modified_type_markup_calculator) { described_class.new( { food: 0.15 }) }
    it 'rate of 15% is applied for food instead of default 13%' do
      marked_up_price = 1050
      expect(modified_type_markup_calculator.markup(marked_up_price, :food)).to eq 157.5
    end
  end
end
