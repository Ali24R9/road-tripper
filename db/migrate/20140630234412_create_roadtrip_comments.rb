class CreateRoadtripComments < ActiveRecord::Migration
  def change
    create_table :roadtrip_feedback do |t|
      t.integer :user_id
      t.integer :stop_id
      t.text :comment
    end
  end
end
