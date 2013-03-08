class CreateOrdersProductsTable < ActiveRecord::Migration
  def change
    create_table :orders_products, id: false do |t|
      t.references :restaurant
      t.references :user
    end
    add_index :orders_products, [:order_id, :product_id]
  end
end
