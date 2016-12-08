class UserPlan < ApplicationRecord
  belongs_to :user
  has_many :user_days
end
