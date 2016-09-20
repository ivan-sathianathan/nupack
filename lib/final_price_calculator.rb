class FinalPriceCalculator

  attr_reader :flat_markup_calculator

  def initialize(base_price, flat_markup_calculator)
    @base_price = base_price
    @flat_markup_calculator = FlatMarkupCalculator.new(base_price)
  end

  def cost
    cost_after_initial_markup = flat_markup_calculator.cost
    cost_after_second_markup = cost_after_initial_markup * 1.1

  end
end
