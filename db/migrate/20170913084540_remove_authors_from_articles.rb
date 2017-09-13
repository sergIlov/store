class RemoveAuthorsFromArticles < ActiveRecord::Migration[5.1]
  def change
    remove_column :articles, :authors, :string
  end
end
