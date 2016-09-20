class ManpowerMarkupCalculator

  attr_reader :number_of_men

  MANPOWER_MARKUP_PERCENTAGE = 0.012

  def initialize(number_of_men, cost_after_initial_markup)
    @number_of_men = number_of_men
    @cost_after_initial_markup = cost_after_initial_markup
  end

  def markup
    @cost_after_initial_markup * @number_of_men * MANPOWER_MARKUP_PERCENTAGE
  end
end
