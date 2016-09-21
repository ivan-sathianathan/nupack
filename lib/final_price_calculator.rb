require_relative 'flat_markup_calculator'
require_relative 'people_markup_calculator'
require_relative 'type_markup_calculator'

class FinalPriceCalculator

  attr_reader :flat_markup_calculator, :people_markup_calculator, :type_markup_calculator

  def initialize(flat_markup_calculator, people_markup_calculator, type_markup_calculator)
    @flat_markup_calculator = FlatMarkupCalculator.new
    @people_markup_calculator = PeopleMarkupCalculator.new
    @type_markup_calculator = TypeMarkupCalculator.new
  end

  def total_cost(base_price, number_of_people, type)
    price_after_flat_markup = flat_markup(base_price)
    people_markup = people_markup(base_price, number_of_people)
    type_markup = type_markup(base_price, type)
    total_cost = price_after_flat_markup + people_markup + type_markup
  end

  private

  def flat_markup(base_price)
    markup = flat_markup_calculator.markup(base_price)
    base_price + markup
  end

  def people_markup(base_price, number_of_people)
    price_after_flat_markup = flat_markup(base_price)
    people_markup_calculator.markup(price_after_flat_markup, number_of_people)
  end

  def type_markup(base_price, type)
    price_after_flat_markup = flat_markup(base_price)
    type_markup_calculator.markup(price_after_flat_markup, type)
  end
end
