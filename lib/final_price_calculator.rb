class FinalPriceCalculator

  attr_reader :flat_markup_calculator, :people_markup_calculator, :type_markup_calculator

  def initialize(flat_markup_calculator, people_markup_calculator, type_markup_calculator)
    @flat_markup_calculator = flat_markup_calculator
    @people_markup_calculator = people_markup_calculator
    @type_markup_calculator = type_markup_calculator
  end

  def total_cost(base_price, number_of_people, type)
    price_after_flat_markup = base_price + flat_markup(base_price)
    other_markups = other_markups(base_price, number_of_people, type)
    total_cost = price_after_flat_markup + other_markups
    total_cost.round(2)
  end

  private

  def flat_markup(base_price)
    flat_markup_calculator.markup(base_price)
  end

  def other_markups(base_price, number_of_people, type)
    people_markup(base_price, number_of_people) + type_markup(base_price, type)
  end

  def people_markup(base_price, number_of_people)
    price = base_price + flat_markup(base_price)
    people_markup_calculator.markup(price, number_of_people)
  end

  def type_markup(base_price, type)
    price = base_price + flat_markup(base_price)
    type_markup_calculator.markup(price, type)
  end
end
