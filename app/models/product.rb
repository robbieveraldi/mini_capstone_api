class Product < ApplicationRecord
  def is_discounted?
    if price.to_i < 10
      discounted = true
    else
      discounted = false
    end
    discounted
  end
end
