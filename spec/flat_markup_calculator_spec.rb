require 'flat_markup_calculator'

describe FlatMarkupCalculator do
  subject(:flat_markup_calculator) { described_class.new(1000) }

  it 'returns cost after flat markup is applied' do
    expect(flat_markup_calculator.cost).to eq(1050)
  end

end
