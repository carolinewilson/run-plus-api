class Day < ApplicationRecord
  belongs_to :plan
  belongs_to :exercise, required: false
end
