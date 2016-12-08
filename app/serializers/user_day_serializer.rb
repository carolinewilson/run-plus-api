class UserDaySerializer < ActiveModel::Serializer
  attributes :id, :position, :week, :completed
  has_one :user_plan
  has_one :exercise
end
