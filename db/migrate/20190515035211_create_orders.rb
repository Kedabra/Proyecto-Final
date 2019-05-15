class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.string :adress
      t.datetime :date
      t.boolean :payed, default: false

      t.timestamps
    end
  end
end
