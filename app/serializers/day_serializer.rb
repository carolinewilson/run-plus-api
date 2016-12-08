class DaySerializer < ActiveModel::Serializer
  attributes :id, :position, :week, :exercise
  has_one :plan
  has_one :exercise
end
