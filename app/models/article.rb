# frozen_string_literal: true

# == Schema Information
#
# Table name: articles
#
#  id         :integer          not null, primary key
#  name       :string
#  body       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Article < ApplicationRecord
  has_many :genreble_genres, as: :genreble
  has_many :genres, through: :genreble_genres

  has_many :authorable_authors, as: :authorable
  has_many :authors, through: :authorable_authors

  def as_json(options = {})
    default_options = { except: [:name_size_prime], include: { authors: { only: :name }, genres: { only: :name } } }
    super(default_options.merge(options))
  end
end
