# frozen_string_literal: true

class SearchController < ApplicationController
  def filter
    render json: [
      books: Queries::SearchBooksQuery.new.call(book_permitted_params).as_json,
      articles: Queries::SearchArticlesQuery.new.call(article_permitted_params)
    ]
  end

  def book_permitted_params
    params.permit(:name, :genre, :author, :publisher)
  end

  def article_permitted_params
    params.permit(:name, :genre, :author)
  end
end
