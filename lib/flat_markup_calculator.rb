class FlatMarkupCalculator

  FLAT_MARKUP_PERCENTAGE = 0.05

  def initialize(base_price)
    @base_price = base_price
  end

  def cost
    base_price + markup
  end


  private

  attr_reader :base_price

  def markup
    base_price * FLAT_MARKUP_PERCENTAGE
  end

end
