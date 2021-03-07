# frozen_string_literal: true

class Vote < ApplicationRecord
  validates :title, :deadline, presence: true
end
