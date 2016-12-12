class AddStatusToUserPlan < ActiveRecord::Migration[5.0]
  def change
    add_column :user_plans, :status, :boolean
  end
end
