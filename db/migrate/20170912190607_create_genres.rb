class CreateGenres < ActiveRecord::Migration[5.1]
  def change
    create_table :genres do |t|
      t.string :name, limit: 255
    end

    add_index :genres, :name, unique: true
  end
end
