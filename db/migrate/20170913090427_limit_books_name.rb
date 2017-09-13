class LimitBooksName < ActiveRecord::Migration[5.1]
  def up
    change_column :books, :name, :string, limit: 255
  end

  def down
    change_column :books, :name, :string
  end
end
