# frozen_string_literal: true

class BooksController < ApplicationController
  def index
    render json: Book.includes([:publisher, :authors]).to_json(except: [:publisher_id, :name_size_prime], include: { publisher: { only: :name }, authors: { only: :name } })
  end

  def primes
    render json: []
  end
end
