require 'final_price_calculator'

describe FinalPriceCalculator do
  subject(:final_price_calculator) { described_class.new(1000, flat_markup_calculator) }
  let(:flat_markup_calculator) { double :flat_markup_calculator, cost: 1050 }

  it 'applies a 10% premium to flat_markup_calculator output' do
    expect(final_price_calculator.cost).to eq(1155)
  end
end
