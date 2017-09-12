# frozen_string_literal: true
# == Schema Information
#
# Table name: books
#
#  id         :integer          not null, primary key
#  name       :string
#  available  :boolean
#  genres     :string
#  authors    :string
#  publisher  :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#


class Book < ApplicationRecord
end
