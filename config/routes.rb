# frozen_string_literal: true

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :books, only: :index do
    collection do
      get :primes
    end
  end

  resources :articles, only: :index

  get "search/filter", to: "search#filter"

  get "lists/books", to: "lists#books"
end
