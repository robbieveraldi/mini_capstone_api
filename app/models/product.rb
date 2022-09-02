class Product < ApplicationRecord
  def is_discounted?
    if price.to_i < 10
      discounted = true
    else
      discounted = false
    end
    discounted
  end

  def tax
    tax = price.to_i * 0.09
    "The tax is #{tax}."
  end
end
