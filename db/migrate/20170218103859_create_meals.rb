class CreateMeals < ActiveRecord::Migration[5.0]
  def change
    create_table :meals do |t|
      t.string :name
      t.text :image
      t.decimal :price_person
      t.timestamp :date

      t.timestamps
    end
  end
end
