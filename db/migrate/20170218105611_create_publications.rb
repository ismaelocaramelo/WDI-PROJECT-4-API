class CreatePublications < ActiveRecord::Migration[5.0]
  def change
    create_table :publications do |t|
      t.timestamp :date
      t.timestamp :setDate
      t.timestamp :deadline
      t.text :meetingPoint

      t.timestamps
    end
  end
end
