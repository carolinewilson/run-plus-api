class Exercise < ApplicationRecord
  belongs_to :user_days, optional: true
end
