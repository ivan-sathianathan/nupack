require 'final_price_calculator'

describe FinalPriceCalculator do
  subject(:final_price_calculator) { described_class.new(flat_markup_calculator, people_markup_calculator, type_markup_calculator) }
  let(:flat_markup_calculator) { double :flat_markup_calculator }
  let(:people_markup_calculator) { double :people_markup_calculator }
  let(:type_markup_calculator) { double :type_markup_calculator }

  context '#final_price' do
    it 'raises error if base price is not number' do
      base_price = "one thousand"
      number_of_people = 1
      type = :type
      expect { final_price_calculator.total_cost(base_price, number_of_people, type) }.to raise_error "Base price must be in numerical format"
    end

    it 'returns final price after all markups (example 1)' do
      base_price = 1299.99
      number_of_people = 3
      type = :food
      allow(flat_markup_calculator).to receive(:markup).and_return(65.00)
      allow(people_markup_calculator).to receive(:markup).and_return(49.14)
      allow(type_markup_calculator).to receive(:markup).and_return(177.45)
      expect(final_price_calculator.total_cost(base_price, number_of_people, type)).to eq (1591.58)
    end

    it 'returns final price after all markups (example 2)' do
      base_price = 5432.00
      number_of_people = 1
      type = :drugs
      allow(flat_markup_calculator).to receive(:markup).and_return(271.60)
      allow(people_markup_calculator).to receive(:markup).and_return(68.44)
      allow(type_markup_calculator).to receive(:markup).and_return(427.77)
      expect(final_price_calculator.total_cost(base_price, number_of_people, type)).to eq (6199.81)
    end

    it 'returns final price after all markups (example 3)' do
      base_price = 12456.95
      number_of_people = 4
      type = :books
      allow(flat_markup_calculator).to receive(:markup).and_return(622.85)
      allow(people_markup_calculator).to receive(:markup).and_return(627.83)
      allow(type_markup_calculator).to receive(:markup).and_return(0)
      expect(final_price_calculator.total_cost(base_price, number_of_people, type)).to eq (13707.63)
    end
  end
end
