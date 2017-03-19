class CreateSongs < ActiveRecord::Migration[5.0]
  def change
    create_table :songs do |t|
      t.string :name
      t.string :album
      t.date :release_date
      t.references :artist, foreign_key: true

      t.timestamps
    end
  end
end
