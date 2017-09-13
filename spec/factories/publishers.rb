# frozen_string_literal: true

FactoryGirl.define do
  factory :publisher do
    name { Faker::Book.publisher }
  end
end
