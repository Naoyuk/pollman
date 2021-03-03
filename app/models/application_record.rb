# frozen_string_literal: true

# Base model definition
class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
end
