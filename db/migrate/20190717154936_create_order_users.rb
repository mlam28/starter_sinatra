class CreateOrderUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :order_users do |t|
      t.integer :user_id
      t.integer :order_items_id
    end
  end
end
