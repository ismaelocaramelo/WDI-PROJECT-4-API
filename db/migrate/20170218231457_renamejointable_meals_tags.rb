class RenamejointableMealsTags < ActiveRecord::Migration[5.0]
  def change
    create_table "meals_tags", id: false, force: :cascade do |t|
      t.belongs_to :meal, index: true
      t.belongs_to :tag, index: true
    end
  end
end
