class FinalPriceCalculator

  attr_reader :flat_markup_calculator, :manpower_markup_calculator

  def initialize(base_price, number_of_men, flat_markup_calculator, manpower_markup_calculator)
    @base_price = base_price
    @number_of_men = number_of_men
    @flat_markup_calculator = flat_markup_calculator
    @manpower_markup_calculator = manpower_markup_calculator
  end

  def cost
    cost_after_initial_markup = flat_markup_calculator.cost
    cost_after_manpower_markup = manpower_markup_calculator.markup
    cost_after_initial_markup + cost_after_manpower_markup
  end
end
