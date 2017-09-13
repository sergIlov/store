# frozen_string_literal: true

module Queries
  class PrimeNamesBooksQuery < AllBooksQuery
    def call(_params = {})
      super.where(name_size_prime: true)
    end
  end
end
