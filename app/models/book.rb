# frozen_string_literal: true

# == Schema Information
#
# Table name: books
#
#  id           :integer          not null, primary key
#  name         :string
#  available    :boolean
#  genres       :string
#  authors      :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  publisher_id :integer
#
# Indexes
#
#  index_books_on_publisher_id  (publisher_id)
#

class Book < ApplicationRecord
  belongs_to :publisher

  has_many :genreble_genres, as: :genreble
  has_many :genres, through: :genreble_genres

  has_many :authorable_authors, as: :authorable
  has_many :authors, through: :authorable_authors
end
