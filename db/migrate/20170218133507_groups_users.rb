class GroupsUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :groups_users do |t|
      t.belongs_to :group, index: true
      t.belongs_to :user, index: true
      t.boolean :accepted, :default => false
    end
  end
end
