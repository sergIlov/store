class RemovePublisherFromBooks < ActiveRecord::Migration[5.1]
  def change
    remove_column :books, :publisher, :string
  end
end
