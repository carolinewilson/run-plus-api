class AddUserToUserPlans < ActiveRecord::Migration[5.0]
  def change
    add_reference :user_plans, :user, foreign_key: true
  end
end
