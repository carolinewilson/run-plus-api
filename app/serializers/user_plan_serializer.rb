class UserPlanSerializer < ActiveModel::Serializer
  attributes :id, :end_date, :name, :active, :status
  has_many :user_days

  def active
    Time.new > (object.end_date - object.user_days.length).to_time
  end

  def status
    if object.end_date > Time.new && (object.end_date - object.user_days.length).to_time < Time.new
      status = 'current'
    elsif object.end_date < Time.new && (object.end_date - object.user_days.length).to_time < Time.new
      status = 'past'
    else
      status = 'future'
    end

    status
  end

end
