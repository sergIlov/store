class RemoveAuthorsFromBooks < ActiveRecord::Migration[5.1]
  def change
    remove_column :books, :authors, :string
  end
end
