# frozen_string_literal: true

class BooksController < ApplicationController
  def index
    render json: Queries::AllBooksQuery.new.call.as_json
  end

  def primes
    render json: Queries::PrimeNamesBooksQuery.new.call.as_json
  end
end
