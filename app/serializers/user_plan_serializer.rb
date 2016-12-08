class UserPlanSerializer < ActiveModel::Serializer
  attributes :id, :end_date, :name
  has_many :user_days
end
