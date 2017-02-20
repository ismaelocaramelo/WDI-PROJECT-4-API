class CreateGroups < ActiveRecord::Migration[5.0]
  def change
    create_table :groups do |t|
      t.string :name
      t.text :icon
      t.boolean :protected, :default => false
      t.integer :admin_id, index: true, :null => false

      t.timestamps
    end
  end
end
