class TypeMarkupCalculator

  RATES = {
    drugs: 0.075,
    food: 0.13,
    electronics: 0.02
  }

  def initialize(rates = RATES)
    @rates = rates
  end

  def markup(price_after_flat_markup, type)
    rate_to_apply = rates.fetch(type, 0)
    markup = price_after_flat_markup * rate_to_apply
  end

  private

  attr_reader :rates
end
