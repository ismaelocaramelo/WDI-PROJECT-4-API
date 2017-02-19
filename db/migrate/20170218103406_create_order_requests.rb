class CreateOrderRequests < ActiveRecord::Migration[5.0]
  def change
    create_table :order_requests do |t|
      t.integer :quantity
      t.boolean :payment, default: false

      t.timestamps
    end
  end
end
