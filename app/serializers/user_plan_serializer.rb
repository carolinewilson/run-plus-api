class UserPlanSerializer < ActiveModel::Serializer
  attributes :id, :end_date, :name, :active, :start_date
  has_many :user_days

  def start_date
    (object.end_date - object.user_days.length).to_time
  end

end
