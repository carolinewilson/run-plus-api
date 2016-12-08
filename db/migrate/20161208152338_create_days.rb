class CreateDays < ActiveRecord::Migration[5.0]
  def change
    create_table :days do |t|
      t.integer :position
      t.integer :exercise
      t.references :plan, foreign_key: true
      t.references :exercise, foreign_key: true

      t.timestamps
    end
  end
end
