class RemoveImagesFromProducts < ActiveRecord::Migration[7.0]
  def change
    remove_column :products, :images, :string
  end
end
