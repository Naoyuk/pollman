# frozen_string_literal: true

FactoryBot.define do
  factory :question do
    body { 'MyText' }
    answer { 'MyString' }
  end
end
