class AddfieldsToGroup < ActiveRecord::Migration[5.0]
  def change
    change_column :groups, :protected, :boolean, :default => false
    add_column :groups_users, :accepted, :boolean, :default => false
    change_column :groups, :admin_id, :integer, :null => false
    add_column :notifications, :user_id, :integer
    add_index :notifications, :user_id
    add_column :notifications, :type_id, :integer
    add_index :notifications, :type_id
    change_column :notifications, :date, :timestamp, :null => false
    add_reference :categories, :parent_category, index: true
  end
end
