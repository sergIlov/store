class CreateAuthorableAuthor < ActiveRecord::Migration[5.1]
  def change
    create_table :authorable_authors do |t|
      t.integer :author_id
      t.integer :authorable_id
      t.string :authorable_type, limit: 8
    end

    add_index :authorable_authors, [:authorable_id, :authorable_type]
  end
end
