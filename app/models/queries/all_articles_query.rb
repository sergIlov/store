# frozen_string_literal: true

module Queries
  class AllArticlesQuery < BaseQuery
    def initialize(relation = ::Article.includes([:authors, :genres]))
      @relation = relation
    end

    def call(_params = {})
      @relation
    end
  end
end
