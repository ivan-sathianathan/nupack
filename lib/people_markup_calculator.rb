class PeopleMarkupCalculator

  PEOPLE_MARKUP_PERCENTAGE = 0.012

  def markup(price_after_flat_markup, number_of_people)
    price_after_flat_markup * number_of_people * PEOPLE_MARKUP_PERCENTAGE
  end
end
