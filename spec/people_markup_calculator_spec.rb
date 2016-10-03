require 'people_markup_calculator'

describe PeopleMarkupCalculator do
  subject(:people_markup_calculator) { described_class.new}

  context '#markup' do
    it 'returns markup after default 1.2% per person markup is applied' do
      marked_up_price = 1050
      number_of_people = 2
      expect(people_markup_calculator.markup(marked_up_price, number_of_people)).to eq(25.2)
    end
    it 'raises an error if \'number of people\' input variable is not a number' do
      marked_up_price = 1050
      number_of_people = "three"
      expect { people_markup_calculator.markup(marked_up_price, number_of_people) }.to raise_error "Number of people must be in numerical format"
    end
    it 'raises an error if \'number of people\' is zero' do
      marked_up_price = 1050
      number_of_people = 0
      expect { people_markup_calculator.markup(marked_up_price, number_of_people) }.to raise_error "Number of people must be greater than zero"
    end
  end

  context 'allows a different rate to be applied' do
    subject(:modified_people_markup_calculator) { described_class.new(0.02) }
    it '2% per person rate applied instead of default 1.2%'do
      marked_up_price = 1000
      number_of_people = 1
      expect(modified_people_markup_calculator.markup(marked_up_price, number_of_people)).to eq 20
    end
  end
end
