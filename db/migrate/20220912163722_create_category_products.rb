class CreateCategoryProducts < ActiveRecord::Migration[7.0]
  belongs_to :Category
  belongs_to :Product

  def change
    create_table :category_products do |t|
      t.integer :product_id
      t.integer :category_id

      t.timestamps
    end
  end
end
