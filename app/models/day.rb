class Day < ApplicationRecord
  belongs_to :plan
  belongs_to :exercise
end
