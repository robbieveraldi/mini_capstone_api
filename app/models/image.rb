class Image < ApplicationRecord
  belongs_to :product

  validates_format_of :image_url, with: %r{\.(png|jpg|jpeg)$}i, message: "Must have valid file type", multiline: true
  # def product
  #   Product.find_by(id: product_id)
  # end
end
