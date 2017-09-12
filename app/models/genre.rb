# frozen_string_literal: true

# == Schema Information
#
# Table name: genres
#
#  id   :integer          not null, primary key
#  name :string(255)
#
# Indexes
#
#  index_genres_on_name  (name) UNIQUE
#

class Genre < ApplicationRecord
  has_many :genreble_genre
end
