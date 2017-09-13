# frozen_string_literal: true

class Queries::BaseQuery
  def initialize(relation)
    @relation = relation
  end

  def call(_params = {})
    raise NotImplementedError
  end
end
