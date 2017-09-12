# frozen_string_literal: true

# == Schema Information
#
# Table name: single_sorts
#
#  id         :integer          not null, primary key
#  list_id    :integer
#  book_id    :integer
#  position   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class SingleSort < ApplicationRecord
end
