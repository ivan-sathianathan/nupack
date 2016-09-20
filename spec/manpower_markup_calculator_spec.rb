require 'manpower_markup_calculator'

describe ManpowerMarkupCalculator do
  subject(:manpower_markup_calculator) { described_class.new(2, 1050)}

  it 'returns markup after manpower markup is applied' do
    expect(manpower_markup_calculator.markup).to eq(25.2)
  end

end
