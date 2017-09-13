# frozen_string_literal: true

FactoryGirl.define  do
  factory :book, class: Book do
    name { Faker::Book.title }
    available true
    association :publisher
  end
end
