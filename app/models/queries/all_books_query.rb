# frozen_string_literal: true

module Queries
  class AllBooksQuery < BaseQuery
    def initialize(relation = ::Book.includes([:publisher, :authors, :genres ]))
      @relation = relation
    end

    def call(_params = {})
      @relation
    end
  end
end
