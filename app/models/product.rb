class Product < ApplicationRecord
  def is_discounted?
    price.to_i < 10
  end

  def tax
    price.to_i * 0.09
  end

  def total
    price + tax
  end
end
