class CreateUserPlans < ActiveRecord::Migration[5.0]
  def change
    create_table :user_plans do |t|
      t.date :end_date
      t.string :name

      t.timestamps
    end
  end
end
