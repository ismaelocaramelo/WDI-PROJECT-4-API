class CreateNotifications < ActiveRecord::Migration[5.0]
  def change
    create_table :notifications do |t|
      t.timestamp :date, :null => false
      t.text :message
      t.string :notification_type

      t.timestamps
    end
  end
end
