class FlatMarkupCalculator

  FLAT_MARKUP_PERCENTAGE = 0.05

  def initialize(flat_markup_percentage = FLAT_MARKUP_PERCENTAGE)
    @flat_markup_percentage = flat_markup_percentage
  end

  def markup(base_price)
    base_price * flat_markup_percentage
  end

  private

  attr_reader :flat_markup_percentage

end
