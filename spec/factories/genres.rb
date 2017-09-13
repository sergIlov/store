# frozen_string_literal: true

FactoryGirl.define do
  factory :genre do
    name { Faker::Book.genre }
  end
end
