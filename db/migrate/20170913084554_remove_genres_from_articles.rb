class RemoveGenresFromArticles < ActiveRecord::Migration[5.1]
  def change
    remove_column :articles, :genres, :string
  end
end
