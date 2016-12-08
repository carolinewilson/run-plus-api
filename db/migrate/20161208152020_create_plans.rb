class CreatePlans < ActiveRecord::Migration[5.0]
  def change
    create_table :plans do |t|
      t.string :level
      t.string :length

      t.timestamps
    end
  end
end
