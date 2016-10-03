require 'people_markup_calculator'

describe PeopleMarkupCalculator do
  subject(:people_markup_calculator) { described_class.new}

  context '#markup' do
    it 'returns markup after 1.2% per person markup is applied' do
      marked_up_price = 1050
      number_of_people = 2
      expect(people_markup_calculator.markup(marked_up_price, number_of_people)).to eq(25.2)
    end
    it 'raises an error if \'number of people\' input variable is not a number' do
      marked_up_price = 1050
      number_of_people = "three"
      expect { people_markup_calculator.markup(marked_up_price, number_of_people) }.to raise_error "Number of people must be a number"
    end
  end
end
