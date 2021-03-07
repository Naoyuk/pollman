class Vote < ApplicationRecord
    validates :title, :deadline, presence: true
end
