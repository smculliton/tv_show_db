class CreateUserShows < ActiveRecord::Migration[5.2]
  def change
    create_table :user_shows do |t|
      t.references :user, foreign_key: true
      t.references :show, foreign_key: true
    end
  end
end
