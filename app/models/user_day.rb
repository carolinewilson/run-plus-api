class UserDay < ApplicationRecord
  belongs_to :user_plan
  belongs_to :exercise, optional: true
  acts_as_list scope: :user_plan
end
