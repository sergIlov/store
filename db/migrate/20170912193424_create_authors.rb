class CreateAuthors < ActiveRecord::Migration[5.1]
  def change
    create_table :authors do |t|
      t.string :name, limit: 255
    end

    add_index :authors, :name, unique: true
  end
end
