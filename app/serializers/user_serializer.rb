class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :strava_id, :image
  has_many :user_plans
end
