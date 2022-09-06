class Product < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :price, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 1 }
  validates :description, length: { in: 10..500 }
  validates_format_of :image_url, with: %r{\.(png|jpg|jpeg)$}i, message: "Must have valid file type", multiline: true

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
