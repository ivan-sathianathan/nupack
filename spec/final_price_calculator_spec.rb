require 'final_price_calculator'

describe FinalPriceCalculator do
  subject(:final_price_calculator) { described_class.new(1000, 2, flat_markup_calculator, manpower_markup_calculator) }
  let(:flat_markup_calculator) { double :flat_markup_calculator, cost: 1050 }
  let(:manpower_markup_calculator) { double :manpower_markup_calculator, number_of_men: 2, markup: 25.2 }

  it 'applies manpower markup flat_markup_calculator output' do
    expect(final_price_calculator.cost).to eq(1075.2)
  end
end
