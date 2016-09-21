class TypeMarkupCalculator
  RATES = {
    drugs: 0.075,
    food: 0.13,
    electronics: 0.02
  }

  def markup(price_after_flat_markup, type)
    rate_to_apply = RATES[type].nil? ? 0 : RATES[type]
    markup = price_after_flat_markup * rate_to_apply
  end
end
