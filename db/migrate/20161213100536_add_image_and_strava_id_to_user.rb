class AddImageAndStravaIdToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :image, :string
    add_column :users, :strava_id, :integer
  end
end
