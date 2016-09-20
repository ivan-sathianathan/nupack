require 'final_price_calculator'

describe FinalPriceCalculator do
  subject(:final_price_calculator) { described_class.new(1000, 2, :food, flat_markup_calculator, manpower_markup_calculator, type_markup_calculator) }
  let(:flat_markup_calculator) { double :flat_markup_calculator, cost: 1050 }
  let(:manpower_markup_calculator) { double :manpower_markup_calculator, number_of_men: 2, markup: 25.2 }
  let(:type_markup_calculator) { double :type_markup_calculator, markup: 136.5 }

  it 'applies manpower markup flat_markup_calculator output' do
    marked_up_price = 1050
    type = :food
    expect(final_price_calculator.cost(marked_up_price, type)).to eq(1211.7)
  end
end
