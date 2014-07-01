class RenameRoadtripComments < ActiveRecord::Migration
  def change
    rename_table :roadtrip_comments, :roadtrips_comments
  end
end
