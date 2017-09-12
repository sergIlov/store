class AddPublisherIdToBooks < ActiveRecord::Migration[5.1]
  def change
    add_column :books, :publisher_id, :int
    add_index :books, :publisher_id
  end
end
