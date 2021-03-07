# frozen_string_literal: true

FactoryBot.define do
  factory :vote do
    title { 'MyVote' }
    deadline { '2021-03-07 00:51:19' }
  end
end
