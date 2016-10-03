class PeopleMarkupCalculator

  PEOPLE_MARKUP_PERCENTAGE = 0.012

  def markup(price_after_flat_markup, number_of_people)
    raise "Number of people must be a number" if !number_of_people.kind_of? Numeric
    price_after_flat_markup * number_of_people * PEOPLE_MARKUP_PERCENTAGE
  end
end
