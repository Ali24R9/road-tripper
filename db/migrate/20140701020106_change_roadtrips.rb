class ChangeRoadtrips < ActiveRecord::Migration
  def change
    add_column :roadtrips, :user_id, :integer
    add_column :stops, :user_id, :integer
  end
end
