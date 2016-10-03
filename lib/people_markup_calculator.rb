class PeopleMarkupCalculator

  PEOPLE_MARKUP_PERCENTAGE = 0.012

  def initialize(people_markup_percentage = PEOPLE_MARKUP_PERCENTAGE)
    @people_markup_percentage = people_markup_percentage
  end

  def markup(price_after_flat_markup, number_of_people)
    raise "Number of people must be in numerical format" if !number_of_people.kind_of? Numeric
    raise "Number of people must be greater than zero" if number_of_people < 1
    price_after_flat_markup * number_of_people * people_markup_percentage
  end

  private

  attr_reader :people_markup_percentage
end
