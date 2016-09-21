require 'final_price_calculator'

describe FinalPriceCalculator do
  subject(:final_price_calculator) { described_class.new(flat_markup_calculator, people_markup_calculator, type_markup_calculator) }
  let(:flat_markup_calculator) { double :flat_markup_calculator, markup: 50 }
  let(:people_markup_calculator) { double :people_markup_calculator, markup: 25.2 }
  let(:type_markup_calculator) { double :type_markup_calculator, markup: 136.5 }

  context '#final_price' do
    it 'returns final price after all markups' do
      base_price = 1000
      number_of_men = 2
      type = :food
      expect(final_price_calculator.total_cost(base_price, number_of_men, type)).to eq (1211.7)
    end
  end

end
