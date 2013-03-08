class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.float :total
      t.string :description
      t.integer :user_id

      t.timestamps
    end
  end
end
