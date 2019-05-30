class CreateTesteds < ActiveRecord::Migration[5.2]
  def change
    create_table :testeds do |t|
      t.string :title
      t.datetime :start

      t.timestamps
    end
  end
end
