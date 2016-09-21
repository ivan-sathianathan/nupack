require 'flat_markup_calculator'

describe FlatMarkupCalculator do
  subject(:flat_markup_calculator) { described_class.new }

  context '#markup' do
    it 'returns markup after flat markup of 5% is applied' do
      base_price = 1000
      expect(flat_markup_calculator.markup(base_price)).to eq(50)
    end
  end    
end
