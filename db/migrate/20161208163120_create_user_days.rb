class CreateUserDays < ActiveRecord::Migration[5.0]
  def change
    create_table :user_days do |t|
      t.integer :position
      t.integer :week
      t.boolean :completed
      t.references :user_plan, foreign_key: true
      t.references :exercise, foreign_key: true

      t.timestamps
    end
  end
end
