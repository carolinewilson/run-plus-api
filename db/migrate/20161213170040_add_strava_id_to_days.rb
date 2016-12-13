class AddStravaIdToDays < ActiveRecord::Migration[5.0]
  def change
    add_column :user_days, :strava_id, :integer
  end
end
