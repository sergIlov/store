class FiilAuthorableAuthors < ActiveRecord::Migration[5.1]
  def up
    books_authors = Book.pluck(:authors).map { |a| a.split(",").map(&:strip) }.flatten.uniq
    articles_authors = Article.pluck(:authors).map { |a| a.split(",").map(&:strip) }.flatten.uniq
    authors = books_authors + articles_authors
    authors.uniq!

    authors_map = authors.map do |name|
      [name, Author.create(name: name).id]
    end.to_h

    Book.pluck(:id, :authors).each do |id, names|
      names.split(",").each do |name|
        AuthorableAuthor.create(author_id: authors_map[name.strip], authorable_id: id, authorable_type: "Book")
      end
    end

    Article.pluck(:id, :authors).each do |id, names|
      names.split(",").each do |name|
        AuthorableAuthor.create(author_id: authors_map[name.strip], authorable_id: id, authorable_type: "Article")
      end
    end
  end

  def down
    Book.all.each { |book| book.update_column(:authors, book.authors.map(&:name).join(", ")) }
    Article.all.each { |book| book.update_column(:authors, book.authors.map(&:name).join(", ")) }
    AuthorableAuthor.delete_all
    Author.delete_all
  end
end
