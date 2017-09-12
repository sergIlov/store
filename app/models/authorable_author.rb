# frozen_string_literal: true

# == Schema Information
#
# Table name: authorable_authors
#
#  id              :integer          not null, primary key
#  author_id       :integer
#  authorable_id   :integer
#  authorable_type :string(8)
#
# Indexes
#
#  index_authorable_authors_on_authorable_id_and_authorable_type  (authorable_id,authorable_type)
#

class AuthorableAuthor < ApplicationRecord
  belongs_to :author
  belongs_to :authorable, polymorphic: true
end
