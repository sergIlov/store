# frozen_string_literal: true

# == Schema Information
#
# Table name: books
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  available       :boolean
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  publisher_id    :integer
#  name_size_prime :boolean          default(FALSE)
#
# Indexes
#
#  index_books_on_publisher_id  (publisher_id)
#

class Book < ApplicationRecord
  PRIMES = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97, 101, 103,
            107, 109, 113, 127, 131, 137, 139, 149, 151, 157, 163, 167, 173, 179, 181, 191, 193, 197, 199, 211, 223, 227,
            229, 233, 239, 241, 251].freeze

  belongs_to :publisher

  has_many :genreble_genres, as: :genreble
  has_many :genres, through: :genreble_genres

  has_many :authorable_authors, as: :authorable
  has_many :authors, through: :authorable_authors

  has_many :single_sorts

  before_save do
    self.name_size_prime = name.size.in? PRIMES if name_changed?
  end

  def as_json(options = {})
    default_options = { except: [:publisher_id, :name_size_prime], include: { publisher: { only: :name }, authors: { only: :name }, genres: { only: :name } } }
    super(default_options.merge(options))
  end
end
