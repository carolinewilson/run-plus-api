class UserPlanSerializer < ActiveModel::Serializer
  attributes :id, :end_date, :name, :active
  # attributes :id, :end_date, :name, :active, :status
  has_many :user_days


  # def status
  #   p object.active
  #   if !object.active
  #     if object.end_date < Time.new && (object.end_date - object.user_days.length).to_time < Time.new
  #     status = 'past'
  #     else
  #       status = 'future'
  #     end
  #   end
  #
  #   status
  # end

end
