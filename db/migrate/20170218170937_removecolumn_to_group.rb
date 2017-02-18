class RemovecolumnToGroup < ActiveRecord::Migration[5.0]
  def change
    # remove_reference :groups, :users, column: :admin_id, index: true
    add_column :groups, :admin_id, :integer
    add_index :groups, :admin_id
  end
end
