# frozen_string_literal: true

# == Schema Information
#
# Table name: genreble_genres
#
#  id            :integer          not null, primary key
#  genre_id      :integer
#  genreble_id   :integer
#  genreble_type :string(8)
#
# Indexes
#
#  index_genreble_genres_on_genreble_id_and_genreble_type  (genreble_id,genreble_type)
#

class GenrebleGenre < ApplicationRecord
  belongs_to :genre
  belongs_to :genreble, polymorphic: true
end
