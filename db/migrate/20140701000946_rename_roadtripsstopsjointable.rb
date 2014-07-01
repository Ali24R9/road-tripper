class RenameRoadtripsstopsjointable < ActiveRecord::Migration
  def change
    rename_table :roadtrip_comments, :roadtrips_stops
    rename_table :roadtrip_feedback, :roadtrip_comments
    rename_column :roadtrip_comments, :stop_id, :roadtrip_id
    remove_column :roadtrips_stops, :user_id
  end
end
