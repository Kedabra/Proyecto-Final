class FixColumnProducts < ActiveRecord::Migration[5.2]
  def change
      rename_column :product_orders, :products_id, :product_id
  end
end
