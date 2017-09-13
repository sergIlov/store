# frozen_string_literal: true

class ArticlesController < ApplicationController
  def index
    render json: Queries::AllArticlesQuery.new.call.as_json
  end
end
