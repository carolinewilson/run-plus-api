class AddMilesToExercises < ActiveRecord::Migration[5.0]
  def change
    add_column :exercises, :miles, :float
  end
end
