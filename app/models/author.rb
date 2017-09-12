# frozen_string_literal: true

# == Schema Information
#
# Table name: authors
#
#  id   :integer          not null, primary key
#  name :string(255)
#
# Indexes
#
#  index_authors_on_name  (name) UNIQUE
#

class Author < ApplicationRecord
  has_many :authorable_authors
end
