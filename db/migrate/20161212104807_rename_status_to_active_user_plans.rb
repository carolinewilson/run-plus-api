class RenameStatusToActiveUserPlans < ActiveRecord::Migration[5.0]
  def change
    rename_column :user_plans, :status, :active
  end
end
