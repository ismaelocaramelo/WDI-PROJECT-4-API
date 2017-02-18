class CreateGroups < ActiveRecord::Migration[5.0]
  def change
    create_table :groups do |t|
      t.string :name
      t.text :icon
      t.boolean :protected

      t.timestamps
    end
  end
end
