# frozen_string_literal: true

# == Schema Information
#
# Table name: publishers
#
#  id   :integer          not null, primary key
#  name :string(255)
#
# Indexes
#
#  index_publishers_on_name  (name) UNIQUE
#

class Publisher < ApplicationRecord
end
