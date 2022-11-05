class AddColumnsToShow < ActiveRecord::Migration[5.2]
  def change
    add_column :shows, :premiered, :datetime
    add_column :shows, :ended, :datetime
    add_column :shows, :summary, :string
  end
end
