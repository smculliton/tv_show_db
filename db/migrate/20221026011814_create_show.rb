class CreateShow < ActiveRecord::Migration[5.2]
  def change
    create_table :shows do |t|
      t.string :name
      t.string :genre1
      t.string :genre2
      t.string :genre3
      t.float :rating
      t.boolean :still_active

      t.timestamps
    end
  end
end
