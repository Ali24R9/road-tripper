class CreateRoadtripsStopsJoinTable < ActiveRecord::Migration
  def change
    create_table :roadtrips_stops_join_table do |t|
      t.integer :user_id
      t.integer :stop_id
      t.integer :roadtrip_id

      t.timestamps
    end
  end
end
