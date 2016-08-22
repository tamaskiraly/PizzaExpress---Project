class CreateOrderItems < ActiveRecord::Migration
  def change
    create_table :order_items do |t|
      t.integer :item_id
      t.integer :quantity
      t.decimal :subtotal
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
