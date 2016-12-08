class UserDay < ApplicationRecord
  belongs_to :user_plan
  belongs_to :exercise
end
