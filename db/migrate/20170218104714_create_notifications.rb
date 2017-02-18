class CreateNotifications < ActiveRecord::Migration[5.0]
  def change
    create_table :notifications do |t|
      t.timestamp :date
      t.text :message

      t.timestamps
    end
  end
end
