class CreateGenrebleGenres < ActiveRecord::Migration[5.1]
  def change
    create_table :genreble_genres do |t|
      t.integer :genre_id
      t.integer :genreble_id
      t.string :genreble_type, limit: 8
    end

    add_index :genreble_genres, [:genreble_id, :genreble_type]
  end
end
