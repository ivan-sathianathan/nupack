require 'type_markup_calculator'

describe TypeMarkupCalculator do
  subject(:type_markup_calculator) { described_class.new }

  it 'returns markup after type markup is applied' do
    marked_up_price = 1050
    expect(type_markup_calculator.markup(marked_up_price, :food)).to eq(136.5)
  end
  it 'does not apply a markup when type does not match' do
    marked_up_price = 1050
    expect(type_markup_calculator.markup(marked_up_price, :cars)).to eq(0)
  end

end
