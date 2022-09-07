class Supplier < ApplicationRecord
  def product
    Product.where(supplier_id: id)
  end
end

# images mode, migrations to remove image url, change json to show all the images for each product
