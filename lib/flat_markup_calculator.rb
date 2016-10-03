class FlatMarkupCalculator

  FLAT_MARKUP_PERCENTAGE = 0.05

  def markup(base_price)
    raise "Base price must be a number" if !base_price.kind_of? Numeric
    base_price * FLAT_MARKUP_PERCENTAGE
  end

end
