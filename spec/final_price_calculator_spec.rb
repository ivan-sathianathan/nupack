require 'final_price_calculator'

describe FinalPriceCalculator do
  subject(:final_price_calculator) { described_class.new(flat_markup_calculator, people_markup_calculator, type_markup_calculator) }
  let(:flat_markup_calculator) { double :flat_markup_calculator }
  let(:people_markup_calculator) { double :people_markup_calculator }
  let(:type_markup_calculator) { double :type_markup_calculator }

  context '#final_price' do
    it 'returns final price after all markups (example 1)' do
      base_price = 1299.99
      number_of_men = 3
      type = :food
      expect(final_price_calculator.total_cost(base_price, number_of_men, type)).to eq (1591.58)
    end
    it 'returns final price after all markups (example 2)' do
      base_price = 5432.00
      number_of_men = 1
      type = :drugs
      expect(final_price_calculator.total_cost(base_price, number_of_men, type)).to eq (6199.81)
    end
    it 'returns final price after all markups (example 3)' do
      base_price = 12456.95
      number_of_men = 4
      type = :books
      expect(final_price_calculator.total_cost(base_price, number_of_men, type)).to eq (13707.63)
    end
  end

end
