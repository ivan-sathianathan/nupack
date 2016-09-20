class TypeMarkupCalculator
  RATES = {
    pharmaceuticals: 0.075,
    food: 0.13,
    electronics: 0.02
  }

  def markup(marked_up_price, type)
    rate_to_apply = RATES[type].nil? ? 0 : RATES[type]
    markup = marked_up_price * rate_to_apply
  end
end
