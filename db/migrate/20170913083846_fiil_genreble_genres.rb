class FiilGenrebleGenres < ActiveRecord::Migration[5.1]
  def up
    books_genres = Book.pluck(:genres).map { |a| a.split(",").map(&:strip) }.flatten.uniq
    articles_genres = Article.pluck(:genres).map { |a| a.split(",").map(&:strip) }.flatten.uniq
    genres = books_genres + articles_genres
    genres.uniq!

    genres_map = genres.map do |name|
      [name, Genre.create(name: name).id]
    end.to_h

    Book.pluck(:id, :genres).each do |id, names|
      names.split(",").each do |name|
        GenrebleGenre.create(genre_id: genres_map[name.strip], genreble_id: id, genreble_type: "Book")
      end
    end

    Article.pluck(:id, :genres).each do |id, names|
      names.split(",").each do |name|
        GenrebleGenre.create(genre_id: genres_map[name.strip], genreble_id: id, genreble_type: "Article")
      end
    end
  end

  def down
    Book.all.each { |book| book.update_column(:genres, book.genres.map(&:name).join(", ")) }
    Article.all.each { |book| book.update_column(:genres, book.genres.map(&:name).join(", ")) }
    GenrebleGenre.delete_all
    Genre.delete_all
  end
end
