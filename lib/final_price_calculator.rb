require 'type_markup_calculator'

class FinalPriceCalculator

  attr_reader :flat_markup_calculator, :manpower_markup_calculator, :type_markup_calculator

  def initialize(base_price, number_of_men, type, flat_markup_calculator, manpower_markup_calculator, type_markup_calculator)
    @base_price = base_price
    @number_of_men = number_of_men
    @type = type
    @flat_markup_calculator = flat_markup_calculator
    @manpower_markup_calculator = manpower_markup_calculator
    @type_markup_calculator = TypeMarkupCalculator.new
  end

  def cost(base_price, type)
    cost_after_initial_markup = flat_markup_calculator.cost
    cost_after_manpower_markup = manpower_markup_calculator.markup
    cost_after_type_markup = type_markup_calculator.markup(base_price, type)
    cost_after_initial_markup + cost_after_manpower_markup + cost_after_type_markup
  end
end
