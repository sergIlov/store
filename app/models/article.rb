# frozen_string_literal: true
# == Schema Information
#
# Table name: articles
#
#  id         :integer          not null, primary key
#  name       :string
#  body       :text
#  authors    :string
#  genres     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#


class Article < ApplicationRecord
end
