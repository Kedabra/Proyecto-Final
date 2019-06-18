class FixColumnOrders < ActiveRecord::Migration[5.2]
  def change
    rename_column :product_orders, :orders_id, :order_id
  end
end
