# frozen_string_literal: true

module Queries
  class SearchBooksQuery < AllBooksQuery
    def call(params = {})
      relation = super.joins(:publisher, :authors, :genres)
      relation = relation.where(name: params[:name]) if params.key? :name
      relation = relation.merge(Publisher.where(name: params[:publisher])) if params.key? :publisher
      relation = relation.merge(Author.where(name: params[:author])) if params.key? :author
      relation = relation.merge(Genre.where(name: params[:genre])) if params.key? :genre
      relation
    end
  end
end
