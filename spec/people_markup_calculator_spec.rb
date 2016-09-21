require 'people_markup_calculator'

describe PeopleMarkupCalculator do
  subject(:people_markup_calculator) { described_class.new}

  context '#markup' do
    it 'returns markup after people markup is applied' do
      marked_up_price = 1050
      number_of_men = 2
      expect(people_markup_calculator.markup(marked_up_price, number_of_men)).to eq(25.2)
    end
  end
end
