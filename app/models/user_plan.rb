class UserPlan < ApplicationRecord
  belongs_to :user
  has_many :user_days, -> { order(position: :asc) }, dependent: :destroy
end
